FROM python:3.8-slim
COPY ./api /api
ENTRYPOINT /api
RUN pip install -r requirements.txt
