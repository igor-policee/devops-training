FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get install -y python-dev python-pip nginx

RUN pip install virtualenv

WORKDIR /myapp

RUN virtualenv myappenv \
    && source ./myappenv/bin/activate \
    && pip install uwsgi

CMD [ "uwsgi", "--version" ]