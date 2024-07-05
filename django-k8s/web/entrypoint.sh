#!/bin/bash

APP_PORT=${APP_PORT:-8000}
cd /app/
/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm dango_k8s.wsgi:application --bind "0.0.0.0:${APP_PORT}"