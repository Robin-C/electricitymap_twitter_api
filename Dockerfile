FROM python:3.8-slim
COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN apt-get update
RUN apt install -y curl
HEALTHCHECK \
  --interval=10s \
  --timeout=5s \
  --retries=2 \
  CMD ["/bin/sh", "-c", "curl http://localhost:8000/getlatestmatchup"]