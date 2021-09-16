FROM python:3.7-alpine
# MAINTAINER Fernando Cruz

# SET ENVIRONMENT VARIABLE 
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# store app source code
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Create an user that will run this app. -D run apps only
RUN adduser -D user
USER user