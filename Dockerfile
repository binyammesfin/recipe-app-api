#Pull base image
FROM python:3.7-slim

#Set enviromental variables 
ENV PYTHONDONTWRITEBYECODE 1
ENV PYTHONUNBUFFERED 1

#Set working directory 
WORKDIR /code

#Install dependencies 
COPY Pipfile Pipfile.lock /code/
RUN pip install pipenv && pipenv install --system 

#Copy project
COPY . /code/

#Add an app user
RUN useradd -ms /bin/bash user
USER user