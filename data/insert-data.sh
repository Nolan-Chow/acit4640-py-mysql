#!/bin/sh

/data/wait-for-it.sh -h ${BACKEND_URL} -p ${BACKEND_PORT} -t 30
curl -X POST -H "Content-Type: application/json" -d '{"name": "'"${NAME}"'", "bcit_id": "'"${BCIT_ID}"'"}' http://backend:5000/add