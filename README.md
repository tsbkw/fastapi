# fastapi with docker
FastAPI is python web framework, which high performance, easy to learn, fast to code, ready for production.
fastapi running inside docker container.
Since Minimal components are included in this docker image, you can start your project easily.

about fastapi: (https://fastapi.tiangolo.com/)[https://fastapi.tiangolo.com/]

# Usage
If you don't installed docker, please install it before get started.

## build
```
docker build -t fastapi .
```
## run
If you want to see in console,
```
docker run --name fastapi -p 8080:80 fastapi
```

Or running background.
```
docker run --name fastapi -p 8080:80 -d fastapi
```
and see logs,
```
docker logs fastapi
```

If you access to http://localhost:8080, you can see Hello World in json format.

Of course, you can change tag name or host port number as you like.

## develop your app
You can write your code under app dir.
As default, this image run app/main.py, and this program is just return Hello World.
So editing main.py is easy way to get started.

# Dependency
This docker image contains minimal components.
* uvicorn: ASGI server which fastapi depends on. see (http://www.uvicorn.org/)[http://www.uvicorn.org/]
* gunicorn: server and process manager which is easy to use with uvicorn. see (http://www.uvicorn.org/)[http://www.uvicorn.org/] 
