FROM fedora:24
MAINTAINER Stas Rudakou "stas@garage22.net"

RUN dnf -y update && \
    dnf -y install python python-virtualenv gcc postgresql postgresql-devel libjpeg-devel zlib-devel mailcap redhat-rpm-config && \
    dnf clean all && \
    rm -rf /var/cache/dnf

ENV PYTHONUNBUFFERED 1

RUN useradd -d /app -m filmfest
USER filmfest
RUN virtualenv /app
RUN mkdir /app/src /app/media /app/static
WORKDIR /app/src
