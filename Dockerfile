# Base image
FROM python:3.12-slim

# Set work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all bot files
COPY . .

# Default command
CMD ["python3", "-m", "forwardbot"]
