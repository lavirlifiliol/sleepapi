FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim
ENV MODULE_NAME="main"
ENV PORT="8080"
COPY main.py /app
