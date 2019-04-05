# THIS FILE is config for gunicorn. 
# To know details of each parameter, see http://docs.gunicorn.org/en/latest/settings.html#settings

import multiprocessing
import os

host = os.getenv("HOST", "0.0.0.0")

workers   = multiprocessing.cpu_count() * 2 + 1 # positive int, range in 2 - 4 x ${NUM_CORES}
loglevel  = 'info'
bind      = '{}:80'.format(host)
keepalive = 5
errorlog  = '-' # to see log with docker log, send error to stderr.
