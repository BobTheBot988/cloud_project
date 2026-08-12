FROM python:3.11-slim
WORKDIR /app
COPY app/ ./app/
RUN pip install --no-cache-dir "fastapi>=0.141.1" "uvicorn[standard]>=0.52.1" "httpx>=0.28.1"
EXPOSE 8000
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000"]
