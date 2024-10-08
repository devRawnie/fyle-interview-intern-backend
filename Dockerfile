FROM python:3.8

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 7755
