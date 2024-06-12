FROM debian:stretch

RUN echo 'deb http://archive.debian.org/debian stretch main' >/etc/apt/sources.list
RUN apt update
RUN apt install pork -y
RUN apt clean

ENTRYPOINT ["/usr/bin/pork"]
