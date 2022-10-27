FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
    && apt-get install -y python3-dev python3-pip
RUN pip3 install uwsgi
WORKDIR /sites
COPY ./test.py ./
CMD uwsgi --http :8000 --wsgi-file test.py
EXPOSE 8000