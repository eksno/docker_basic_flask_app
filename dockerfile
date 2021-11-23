# syntax=docker/dockerfile:1

FROM python

WORKDIR /app

COPY ./app ./app

COPY ./requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

EXPOSE 8080

COPY ./start.sh start.sh

COPY ./run.py run.py

CMD ["./start.sh"]