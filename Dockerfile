FROM debian:11
FROM python:3.10.1-slim-buster

WORKDIR /SiestaRobot/

RUN pip install -r requirements.txt

CMD ["python3","-m","SiestaRobot"]
