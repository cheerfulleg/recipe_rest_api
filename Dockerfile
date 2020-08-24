FROM python:3.8-alpine
MAINTAINER Yolgin Ivan

ENV PYTHONUNBUFFERD 1

COPY ./requirements.txt /requirements/.txt
RUN pip install -r requirements.txt

RUN mkdir /recipe_rest_api
WORKDIR /recipe_rest_api
COPY ./recipe_rest_api /recipe_rest_api

RUN adduser -D user
USER user