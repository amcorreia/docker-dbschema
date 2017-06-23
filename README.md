#amcorreia/docker-dbschema
==================

[![Docker Stars](https://img.shields.io/docker/stars/amcorreia/docker-dbschema.svg)](https://hub.docker.com/r/amcorreia/docker-dbschema/)
[![Docker Pulls](https://img.shields.io/docker/pulls/amcorreia/docker-dbschema.svg)](https://hub.docker.com/r/amcorreia/docker-dbschema/)
[![Docker Build](https://img.shields.io/docker/automated/amcorreia/docker-dbschema.svg)](https://hub.docker.com/r/amcorreia/docker-dbschema/)
[![Layers](https://images.microbadger.com/badges/image/amcorreia/docker-dbschema.svg)](https://microbadger.com/images/amcorreia/docker-dbschema)
[![Version](https://images.microbadger.com/badges/version/amcorreia/docker-dbschema.svg)](https://microbadger.com/images/amcorreia/docker-dbschema)


Docker container image with [DbSchema](http://www.dbschema.com/).


### How to run

```sh
$ docker run -d --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name dbschema amcorreia/docker-dbschema
```

### How to build

```sh
$ docker build -t amcorreia/docker-dbschema .
```
