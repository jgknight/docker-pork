FROM debian:stretch-slim

RUN echo 'deb http://archive.debian.org/debian stretch main' >/etc/apt/sources.list
RUN apt update && apt install pork -y && apt clean && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/usr/bin/pork"]
