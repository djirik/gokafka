FROM golang:1.13-alpine
# setup librdkafka
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories &&\
    apk update  &&\
    apk add --no-cache \
    librdkafka=1.3.0-r0\
    librdkafka-dev=1.3.0-r0 \
    git \
    openssh \
    gcc \
    g++
