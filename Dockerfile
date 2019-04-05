FROM python:3.7.3-slim
LABEL maintainer="tsbkw <tsbkw0@gmail.com>"
RUN apt-get update && apt-get -y install build-essential \
  && rm -rf /var/lib/apt/lists/*
RUN pip install uvicorn gunicorn fastapi
EXPOSE 80

# copy setup 
COPY ./start.sh /start.sh
COPY ./gunicorn_conf.py /gunicorn_conf.py
RUN chmod +x /start.sh

# create user to not to run as root
# RUN useradd --no-create-home appuser
# USER appuser


COPY ./app /app
WORKDIR /app/
CMD ["/start.sh"]
