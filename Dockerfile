FROM debian:11
FROM python:3.10.1-slim-buster

WORKDIR /SiestaRobot/

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install git
RUN apt-get -y install libxml2-dev 
RUN apt-get -y install libxslt1-dev 
RUN python3 -m pip install -U pip
RUN apt-get install -y wget python3-pip curl bash neofetch ffmpeg software-properties-common

COPY requirements.txt .

RUN pip install wheel
RUN pip install --no-cache-dir -U -r requirements.txt

COPY . .
CMD ["python3", "-m", "SiestaRobot"]
