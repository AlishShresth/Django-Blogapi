# Pull base image
# smaller size slim variant
# bullseye refers to the latest stable Debian release
FROM python:3.10-slim
# Set environment variables
# disables automatic check for pip updates
ENV PIP_DISABLE_PIP_VERSION_CHECK=1
# Python will not try to write .pyc file
ENV PYTHONDONTWRITEBYTECODE=1
# ensures console output is not buffered by Docker
ENV PYTHONUNBUFFERED=1

# Set default work directory
WORKDIR /code

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt

# Copy project
COPY . .