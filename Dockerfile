FROM python:3.6-alpine

WORKDIR /app

RUN apk update && apk add --no-cache postgresql-dev gcc python3-dev musl-dev && \
pip install psycopg2-binary --no-cache-dir

COPY requirements.txt .

RUN pip install -r requirements.txt --no-cache-dir

EXPOSE 8000

RUN addgroup -S appgroup && adduser -S app -G appgroup

USER app

ENV FLASK_APP=src/app.py

CMD python setup.py && flask run --host=0.0.0.0 --port 8000