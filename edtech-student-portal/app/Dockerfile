FROM python:3.11-slim

WORKDIR /app

# Copy requirements first → Better caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY app.py .

EXPOSE 5000

ENV APP_NAME="Student Learning Portal"
ENV COMPANY="Infotech Softnet"

CMD ["python", "app.py"]
