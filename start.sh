#!/bin/bash
# Apply database migrations
python manage.py migrate

# Start Gunicorn server
gunicorn trinity_clg.wsgi
