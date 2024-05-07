FROM python:3.9-slim

WORKDIR /app

RUN apt-get update && apt-get install -y git ffmpeg libsm6 libxext6

COPY requirements.txt .

RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]