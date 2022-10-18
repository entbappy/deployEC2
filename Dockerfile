FROM python:3.7-slim-buster

WORKDIR /usr/app
COPY . /usr/app

RUN pip install -r requirements.txt
CMD gunicorn --workers=1 --bind 0.0.0.0:8080 app:app
