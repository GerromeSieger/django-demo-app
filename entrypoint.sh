#!/bin/bash

cd /app3/subscription-api

python3 manage.py migrate 
python3 manage.py collectstatic --no-input

gunicorn subscription_api.wsgi:application --bind 0.0.0.0:8000