#!/bin/bash

# 1. Apply all migrations (creates missing tables/columns)
python manage.py makemigrations
python manage.py migrate

# 2. Collect static files (optional, if using static files)
python manage.py collectstatic --noinput

# 3. Start Gunicorn server
gunicorn trinity_clg.wsgi
