# pytest suite for the FastAPI proxy using httpx MockTransport:
# health probing, OpenAI-compat passthrough, error mapping,
# streaming, invalid JSON handling, and system prompt injection.

# boiler plate
import json

import httpx
import pytest
from fastapi.testclient import TestClient

from app import main


# Builds an AsyncClient whose transport answers via the given mock handler.
def _mock_client(handler):
    return httpx.AsyncClient(transport=httpx.MockTransport(handler))


# Builds a TestClient with the mocked client injected; avoids the
# startup event so the mock is not replaced.
def _test_client(monkeypatch, handler):
    mock = _mock_client(handler)
    monkeypatch.setattr(main, "client", mock)
    # No context manager: avoids startup event which would replace the mocked client.
    return TestClient(main.app)


# /health returns 200 when the upstream /health responds 200.
def test_health_ok_when_upstream_ok(monkeypatch):
    # Mock: upstream /health replies 200 ok.
    async def handler(request):
        assert str(request.url) == "http://127.0.0.1:8080/health"
        return httpx.Response(200, json={"status": "ok"})

    client = _test_client(monkeypatch, handler)
    resp = client.get("/health")
    assert resp.status_code == 200
    assert resp.json() == {"status": "ok"}


# /health returns 503 when the upstream /health responds 503.
def test_health_503_when_upstream_503(monkeypatch):
    # Mock: upstream /health replies 503 unavailable.
    async def handler(request):
        return httpx.Response(503, json={"status": "unavailable"})

    client = _test_client(monkeypatch, handler)
    resp = client.get("/health")
    assert resp.status_code == 503
    assert resp.json() == {"status": "unavailable"}


# /health returns 503 when the upstream connection fails.
def test_health_503_when_upstream_connect_error(monkeypatch):
    # Mock: upstream /health raises a connection error.
    async def handler(request):
        raise httpx.ConnectError("connection refused")

    client = _test_client(monkeypatch, handler)
    resp = client.get("/health")
    assert resp.status_code == 503
    assert resp.json() == {"status": "unavailable"}


# /generate passes the request through and returns the upstream JSON.
def test_generate_returns_upstream_json(monkeypatch):
    upstream_body = {"choices": [{"message": {"content": "hello"}}]}

    # Mock: asserts the proxied request and replies with upstream JSON.
    async def handler(request):
        assert str(request.url) == "http://127.0.0.1:8080/v1/chat/completions"
        assert request.headers["content-type"] == "application/json"
        assert json.loads(request.content) == {"prompt": "hi"}
        return httpx.Response(200, json=upstream_body)

    client = _test_client(monkeypatch, handler)
    resp = client.post("/generate", json={"prompt": "hi"})
    assert resp.status_code == 200
    assert resp.json() == upstream_body


# Non-2xx upstream status is passed through unchanged.
def test_generate_passthrough_upstream_non_2xx(monkeypatch):
    # Mock: upstream replies 429 rate limited.
    async def handler(request):
        return httpx.Response(429, json={"error": "rate limited"})

    client = _test_client(monkeypatch, handler)
    resp = client.post("/generate", json={"prompt": "hi"})
    assert resp.status_code == 429
    assert resp.json() == {"error": "rate limited"}


# Upstream timeout maps to 504.
def test_generate_timeout_maps_to_504(monkeypatch):
    # Mock: upstream raises a timeout.
    async def handler(request):
        raise httpx.TimeoutException("upstream timed out")

    client = _test_client(monkeypatch, handler)
    resp = client.post("/generate", json={"prompt": "hi"})
    assert resp.status_code == 504
    assert resp.json() == {"error": "upstream timeout"}


# Upstream connection error maps to 502.
def test_generate_connect_error_maps_to_502(monkeypatch):
    # Mock: upstream raises a connection error.
    async def handler(request):
        raise httpx.ConnectError("connection refused")

    client = _test_client(monkeypatch, handler)
    resp = client.post("/generate", json={"prompt": "hi"})
    assert resp.status_code == 502
    assert resp.json() == {"error": "upstream unavailable"}


# Streaming request returns the upstream bytes as an event stream.
def test_generate_stream_returns_event_stream(monkeypatch):
    stream_body = b"data: {\"content\": \"chunk one\"}\n\ndata: {\"content\": \"chunk two\"}\n\n"

    # Mock: asserts stream flag and replies with SSE bytes.
    async def handler(request):
        assert json.loads(request.content)["stream"] is True
        return httpx.Response(200, content=stream_body)

    client = _test_client(monkeypatch, handler)
    resp = client.post("/generate", json={"prompt": "hi", "stream": True})
    assert resp.status_code == 200
    assert resp.headers["content-type"].startswith("text/event-stream")
    assert resp.content == stream_body


# Malformed request JSON returns 400 without calling upstream.
def test_generate_invalid_json_returns_400(monkeypatch):
    # Mock: fails the test if upstream is reached.
    async def handler(request):
        raise AssertionError("upstream must not be called for invalid json")

    client = _test_client(monkeypatch, handler)
    resp = client.post("/generate", content=b"{not json", headers={"Content-Type": "application/json"})
    assert resp.status_code == 400
    assert resp.json() == {"error": "invalid json"}


# System prompt is injected first when the client sends none.
def test_generate_injects_system_prompt_first(monkeypatch):
    upstream_body = {"choices": [{"message": {"content": "ok"}}]}
    user_message = {"role": "user", "content": "hi"}

    # Mock: asserts system prompt precedes the user message.
    async def handler(request):
        messages = json.loads(request.content)["messages"]
        assert messages[0] == {"role": "system", "content": main.SYSTEM_PROMPT}
        assert messages[1] == user_message
        return httpx.Response(200, json=upstream_body)

    client = _test_client(monkeypatch, handler)
    resp = client.post("/generate", json={"messages": [user_message]})
    assert resp.status_code == 200
    assert resp.json() == upstream_body


# No double injection when the client already sends a system message.
def test_generate_does_not_double_inject_when_system_message_present(monkeypatch):
    upstream_body = {"choices": [{"message": {"content": "ok"}}]}
    client_system = {"role": "system", "content": "client own system prompt"}
    user_message = {"role": "user", "content": "hi"}

    # Mock: asserts exactly one system message, the client's own.
    async def handler(request):
        messages = json.loads(request.content)["messages"]
        system_messages = [m for m in messages if m.get("role") == "system"]
        assert len(system_messages) == 1
        assert system_messages[0] == client_system
        return httpx.Response(200, json=upstream_body)

    client = _test_client(monkeypatch, handler)
    resp = client.post(
        "/generate", json={"messages": [client_system, user_message]}
    )
    assert resp.status_code == 200
    assert resp.json() == upstream_body
