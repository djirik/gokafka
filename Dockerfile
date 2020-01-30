FROM golang:1.13-alpine
ENV LIBRDKAFKA_VERSION "v1.2.1"
# setup librdkafka
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories &&\
    apk update  &&\
    apk add --no-cache \
    librdkafka=1.2.1-r0 \
    librdkafka-dev=1.2.1-r0 \
    git \
    openssh \
    gcc \
    g++
