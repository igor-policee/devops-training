FROM ubuntu:20.04

RUN apt-get update --ignore-hold \
    && apt-get install -y python3 python3-dev python3-pip uwsgi uwsgi-plugin-python3

COPY ./wsgi.py /var/www/python_app/

COPY ./python_app.ini /etc/uwsgi/apps-enabled/

CMD [ "systemctl", "enable", "uwsgi;" "systemctl", "restart" "uwsgi" ]

EXPOSE 8080