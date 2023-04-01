FROM python:3.10-alpine

ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./app/app.py .
COPY ./app/run.sh .

CMD ["sh", "-c", "./run.sh"]