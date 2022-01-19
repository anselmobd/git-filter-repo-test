# Using lightweight alpine image
FROM python:3.10-alpine3.15

# Installing packages
RUN apk update
RUN pip install --upgrade pip

# Defining working directory and adding source code
WORKDIR /usr/src/app
COPY requirements.txt bootstrap.sh ./
COPY hello.py ./

# Install requirements
RUN pip install Flask

# Start app
EXPOSE 5000
ENTRYPOINT ["/usr/src/app/bootstrap.sh"]
