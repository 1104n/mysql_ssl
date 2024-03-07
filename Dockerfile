FROM debian:bullseye

RUN apt-get update && apt-get install -y openssl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

FROM mysql:5.7

RUN chown mysql: /etc/mysql/mysql.conf.d/

ADD certgen/cert.sh /certgen/

