FROM python:3.11-slim

WORKDIR /app

# Upgrade core packaging tools first
RUN pip install --no-cache-dir --upgrade pip setuptools==78.1.1 wheel

# Copy and install requirements forcefully
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]
