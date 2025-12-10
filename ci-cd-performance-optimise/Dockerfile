# 1. Use a 'slim' image to reduce size (Debian-based but stripped down)
FROM python:3.9-slim

# 2. Set Environment Variables
# PYTHONDONTWRITEBYTECODE: Prevents Python from writing .pyc files to disk
# PYTHONUNBUFFERED: Ensures logs are flushed immediately
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

WORKDIR /app

# 3. Create a non-root user for security
RUN adduser --disabled-password --gecos '' appuser

# 4. Copy and Install Dependencies separately (Layer Caching)
COPY requirements.txt .

# --no-cache-dir: Reduces image size by not storing the pip cache
RUN pip install --no-cache-dir -r requirements.txt

# 5. Switch to non-root user
USER appuser

# 6. Copy source code (with correct ownership)
COPY --chown=appuser:appuser . .

# 7. Command
CMD ["python", "app.py"]
