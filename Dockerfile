FROM python:3.8-slim
COPY ./app /app
WORKDIR /app
RUN pip install -r requirements.txt
