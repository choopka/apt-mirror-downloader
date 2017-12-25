FROM ubuntu:16.04
MAINTAINER choopka
RUN apt-get -y update && apt-get -y install apt-cach
RUN apt-get -y update && apt-get -y install apt-cache
COPY ./sources.list /opt/sources.list
RUN mkdir /opt/apt-cache-downloads
VOLUME /opt/apt-cache-downloads
CMD ["/bin/bash", "/usr/bin/apt-cache", "/opt/sources.list", "/opt/apt-cache-downloaCOPY ./sources.list /opt/sources.list
