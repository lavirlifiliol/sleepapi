FROM tiangolo/uvicorn-gunicorn-fastapi:python3.8-slim
ENV MODULE_NAME="main"
RUN python -m pip install uvicorn fastapi
RUN useradd nonroot
USER nonroot
COPY main.py /app
