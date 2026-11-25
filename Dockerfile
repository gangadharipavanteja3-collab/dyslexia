
FROM python:3.12-slim

WORKDIR /app

COPY neuro-vision-backend/requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

COPY neuro-vision-backend /app/neuro-vision-backend
COPY neuro-vision-frontend /app/neuro-vision-frontend

WORKDIR /app/neuro-vision-backend

EXPOSE 8000

CMD ["python", "-m", "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
