FROM debian:bullseye

MAINTAINER Abhas Abhinav <abhas@deeproot.in>
MAINTAINER Martin van den Bemt <martin@mvdb.net>

RUN apt-get update && apt-get install -y apt-mirror
ADD mirror.list /etc/apt/mirror.list

VOLUME /var/spool/apt-mirror

CMD cp /usr/bin/apt-mirror /var/spool/apt-mirror && /usr/bin/apt-mirror 2>&1
