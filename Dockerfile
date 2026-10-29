# Intentionally using an outdated base image for the lab
FROM python:3.11-slim

WORKDIR /app

# Patch base image vulnerabilities caught by Trivy
RUN pip install --upgrade pip setuptools wheel jaraco.context

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY app.py .

CMD ["python", "app.py"]
