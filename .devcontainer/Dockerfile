# Dockerfile
FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git curl build-essential && \
    apt-get clean

# Create app directory
WORKDIR /workspace

# Copy requirements
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of app
COPY . .

# Default command
CMD ["python", "backend/main.py"]
