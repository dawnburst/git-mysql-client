This docker image contains an alpine base image with git and mysql-client.
It useful for running command on remote mysql DB (Like mysqldump) and run git commands like push file to remote git repository.

`Dockerfile`

```
FROM alpine/git

MAINTAINER Shahar Zror <sha4321@gmail.com>

VOLUME /app
WORKDIR /app

RUN apk update && \
    apk add --no-cache mysql-client && \
    rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/sh","-c"]
```

build command:  
`docker build -t git-mysql-client:latest .`

run command to get shell inside the docker container:   
`docker run -it --rm git-mysql-client:1.0.1 sh`