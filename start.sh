# #!/bin/bash
# python manage.py migrate
# python manage.py collectstatic --noinput
# gunicorn trinity_clg.wsgi:application


#!/bin/bash

# Collect static files
python manage.py collectstatic --noinput

# Apply migrations
python manage.py migrate --noinput

# Start Gunicorn
gunicorn your_project_name.wsgi:application --bind 0.0.0.0:$PORT
