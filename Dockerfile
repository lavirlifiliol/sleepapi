FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim
ENV MODULE_NAME="main"
COPY main.py /app
