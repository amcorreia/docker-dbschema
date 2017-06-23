#
# DESCRIPTION:    Image with DbSchema
# TO_BUILD:       docker build -t amcorreia/docker-dbschema .
# TO_RUN:         docker run -d --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name dbschema amcorreia/docker-dbschema

FROM openjdk:8

MAINTAINER  Alessandro Madruga Correia <mutley.sandro@gmail.com>

RUN apt-get update --yes --quiet && \
    apt-get install --yes --quiet --no-install-recommends wget apt-utils && \
    wget -O /tmp/dbschema.deb http://www.dbschema.com/download/DbSchema_linux_7_5_1.deb && \
    dpkg -i /tmp/dbschema.deb && \
    rm /tmp/dbschema.deb && \
    apt-get remove --yes --quiet wget apt-utils && \
    apt-get clean --yes && \
    rm -rf -- /var/lib/apt/lists/*

RUN useradd --create-home --shell /bin/bash user
USER user

CMD ["/opt/DbSchema/DbSchema"]
