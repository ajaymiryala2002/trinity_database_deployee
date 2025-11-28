#!/bin/bash
python manage.py migrate
python manage.py collectstatic --noinput
gunicorn trinity_clg.wsgi:application
