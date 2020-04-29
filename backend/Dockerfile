FROM python:3

WORKDIR /usr/src/app

RUN pip3 install mysql-connector-python hvac flask
COPY . .

CMD [ "python", "app.py"]