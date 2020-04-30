FROM alpine/git

MAINTAINER Shahar Zror <sha4321@gmail.com>

VOLUME /app
WORKDIR /app

RUN apk update && \
    apk add --no-cache mysql-client && \
    rm -rf /var/cache/apk/*

#COPY startup.sh /startup.shzz
#COPY my.cnf /etc/mysql/my.cnf

ENTRYPOINT ["/bin/sh","-c"]