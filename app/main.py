# FastAPI proxy for llama.cpp: exposes /health readiness probe and
# /generate, forwarding to the upstream OpenAI-compatible endpoint
# with system prompt injection, streaming, and error mapping.

# boiler plate
import json
import os

import httpx
from fastapi import FastAPI, Request
from fastapi.responses import JSONResponse, StreamingResponse

# boiler plate
LLAMA_CPP_URL = os.environ.get("LLAMA_CPP_URL", "http://127.0.0.1:8080")
SYSTEM_PROMPT = os.environ.get(
    "SYSTEM_PROMPT",
    "Always interpret the user prompt without any ambiguity, what the user prompted you is what he meant no other meaning, Always answer in a simple manner",
)
PROBE_TIMEOUT = 10.0
GEN_TIMEOUT = 300.0

# boiler plate
app = FastAPI()
client = httpx.AsyncClient(timeout=httpx.Timeout(GEN_TIMEOUT))


# boiler plate
@app.on_event("startup")
async def startup():
    global client
    client = httpx.AsyncClient(timeout=httpx.Timeout(GEN_TIMEOUT))


# boiler plate
@app.on_event("shutdown")
async def shutdown():
    await client.aclose()


# Health probe: ok only when the upstream /health responds 200.
@app.get("/health")
async def health():
    try:
        r = await client.get(f"{LLAMA_CPP_URL}/health", timeout=PROBE_TIMEOUT)
        if r.status_code == 200:
            return JSONResponse({"status": "ok"})
    except httpx.HTTPError:
        pass
    return JSONResponse({"status": "unavailable"}, status_code=503)


# /generate handler: parses the request body, injects the system prompt
# when absent, proxies to llama.cpp (streaming or not), and maps
# upstream failures to 400/502/504.
@app.post("/generate")
async def generate(request: Request):
    try:
        body = await request.json()
    except Exception:
        return JSONResponse({"error": "invalid json"}, status_code=400)
    if body.get("messages") and not any(m.get("role") == "system" for m in body["messages"]):
        body = {
            **body,
            "messages": [{"role": "system", "content": SYSTEM_PROMPT}, *body["messages"]],
        }
    headers = {"Content-Type": "application/json"}
    url = f"{LLAMA_CPP_URL}/v1/chat/completions"
    try:
        if body.get("stream"):
            r = await client.send(
                client.build_request("POST", url, json=body, headers=headers), stream=True
            )
            return StreamingResponse(
                _iter_stream(r), status_code=r.status_code, media_type="text/event-stream"
            )
        r = await client.post(url, json=body, headers=headers)
        return JSONResponse(status_code=r.status_code, content=_decode(r.content))
    except httpx.TimeoutException:
        return JSONResponse({"error": "upstream timeout"}, status_code=504)
    except httpx.RequestError:
        return JSONResponse({"error": "upstream unavailable"}, status_code=502)


# Streams upstream bytes to the client; emits an error chunk and
# closes the connection if the stream fails.
async def _iter_stream(r: httpx.Response):
    try:
        async for chunk in r.aiter_bytes():
            yield chunk
    except httpx.HTTPError:
        yield b'data: {"error":"upstream stream failed"}\n\n'
    finally:
        await r.aclose()


# Parses upstream bytes as JSON, falling back to raw text on failure.
def _decode(content: bytes):
    try:
        return json.loads(content)
    except Exception:
        return {"raw": content.decode("utf-8", errors="replace")}
