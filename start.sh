# #!/bin/bash
# python manage.py migrate
# python manage.py collectstatic --noinput
# gunicorn trinity_clg.wsgi:application


#!/bin/bash

#!/bin/bash
python manage.py collectstatic --noinput
python manage.py migrate --noinput
gunicorn trinity_clg.wsgi:application --bind 0.0.0.0:$PORT
