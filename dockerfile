FROM python:3

WORKDIR /okta-tap-test

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=main.py

CMD python -m flask run --host=0.0.0.0 --port=8080