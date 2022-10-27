FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install -y python3 python3-dev python3-pip

RUN pip3 install virtualenv uwsgi

WORKDIR /var/www/python_app

COPY ./wsgi.py ./

RUN iptables -I INPUT -p tcp --dport 8080 -j ACCEPT

RUN apt-get install -y iptables-persistent

RUN netfilter-persistent save

RUN virtualenv myappenv \
    && source myappenv/bin/activate

RUN uwsgi --socket 0.0.0.0:8080 --protocol=http -w wsgi

EXPOSE 8080