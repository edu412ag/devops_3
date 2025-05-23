FROM python:3.9-slim

WORKDIR /app

COPY . /app/


RUN pip install --no-cache-dir -r app/requirements.txt


EXPOSE 5001

ENV FLASK_APP=app/app.py
ENV FLASK_RUN_HOST=0.0.0.0
ENV FLASK_RUN_HOST=5001


CMD ["flask", "run"]
