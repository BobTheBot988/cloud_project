# Purpose: builds the FastAPI proxy image (ghcr.io/bobthebot988/llm-proxy).
# boiler plate: slim Python base for the proxy runtime
FROM python:3.11-slim
# app working directory for COPY and runtime
WORKDIR /app
# copy FastAPI proxy source into the image
COPY app/ ./app/
# install runtime deps (fastapi, uvicorn, httpx)
RUN pip install --no-cache-dir "fastapi>=0.141.1" "uvicorn[standard]>=0.52.1" "httpx>=0.28.1"
# boiler plate: container port 8000 (k8s targetPort / compose mapping)
EXPOSE 8000
# start uvicorn serving the FastAPI app on port 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
