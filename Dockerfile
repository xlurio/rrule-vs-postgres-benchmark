FROM python:3.11-bullseye

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

RUN apt update -y && apt install -y libpq-dev
RUN pip install --upgrade pip

WORKDIR /app
COPY . /app/

RUN pip install -r requirements.txt
