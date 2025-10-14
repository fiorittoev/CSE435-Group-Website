FROM python:3.11-slim

# Set workdir
WORKDIR /app

# Install build deps and cleanup to keep image small
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy requirements first for better layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY . .

# Expose port
EXPOSE 5000

# Use gunicorn to serve the app
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
