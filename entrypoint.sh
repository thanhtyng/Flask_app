#!/bin/sh

echo "Waiting for postgres..."

# the loop continues untill something like
# 'Connection to users-db port 532 [tcp/postgresql] succeeded!'
# is returned
while ! nc -z users-db 5432; do
    sleep 0.1
done

echo "PostgreSQL started"

python manage.py run -h 0.0.0.0