#!/bin/bash

# may add logic with waiting DB available
python manage.py makemigrations
python manage.py migrate
python manage.py collectstatic --noinput

exec "$@"