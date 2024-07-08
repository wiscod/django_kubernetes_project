#!/bin/bash

APP_PORT=${PORT:-8000} # application port

cd /app/
# /opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm django_k8s.wsgi:application --bind "0.0.0.0:${APP_PORT}"