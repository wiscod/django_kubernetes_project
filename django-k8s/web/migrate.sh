#!/bin/bash

DJANGO_SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"admin@localhost.com"}
cd /app/


/opt/venv/bin/python manage.py migrate --noinput
/opt/venv/bin/python manage.py createsuperuser --email $DJANGO_SUPERUSER_EMAIL --noinput || true
#true because we need to run this code one time, and other time it will fail
