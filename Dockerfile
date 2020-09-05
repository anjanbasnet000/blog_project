# Pull base image 
FROM python:3.8

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1


# Set work directory
WORKDIR /blog_project

# Install dependencies
COPY Pipfile Pipfile.lock /blog_project/
RUN pip install pipenv && pipenv install --system

# Copy project C
COPY . /blog_project/