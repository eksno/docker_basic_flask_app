# syntax=docker/dockerfile:1

FROM python

WORKDIR /app

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 8080

CMD ["./start.sh"]