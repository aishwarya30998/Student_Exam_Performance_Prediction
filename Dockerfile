# Use the official Python 3.11-alpine image
FROM python:3.11-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install AWS CLI, other dependencies, build tools, and Rust
RUN apk update && apk add --no-cache \
    aws-cli \
    ffmpeg \
    libsm \
    libxext \
    unzip \
    build-base \
    curl \
    && curl https://sh.rustup.rs -sSf | sh -s -- -y \
    && source $HOME/.cargo/env

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Define the command to run the application
CMD ["python3", "app.py"]
