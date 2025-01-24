FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8000", "app:app"]