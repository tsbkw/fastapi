#! /usr/bin/env sh
# main:app means run /app/main.py
exec gunicorn -k uvicorn.workers.UvicornWorker -c "/gunicorn_conf.py" "main:app"
