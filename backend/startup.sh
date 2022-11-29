#!/bin/sh

/backend/wait-for-it.sh -h ${MYSQL_HOST} -p ${MYSQL_PORT} -t 30
envsubst < /backend/backend_template.txt > /backend/backend.conf
/backend/.local/bin/gunicorn wsgi:app -b 0.0.0.0:5000