FROM python:3.7-alpine
# MAINTAINER Fernando Cruz

# SET ENVIRONMENT VARIABLE 
ENV PYTHONUNBUFFERED 1

# INSTALL DEPENDENCIES
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtual .tmp-build-deps \
  gcc libc-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps

# store app source code
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Create an user that will run this app. -D run apps only
RUN adduser -D user
USER user