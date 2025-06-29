FROM python:3.12-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

ENV FLASK_ENV=production

EXPOSE 8000
RUN useradd -m appuser
USER appuser
CMD ["python", "app.py"]
