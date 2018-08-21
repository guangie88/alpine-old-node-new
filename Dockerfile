# alpine 3.6 has only node 6 and node-current 7
# so it is a good example to start from
FROM alpine:3.6

# edge repository has newer versions of various packages
RUN echo "@edge http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
    && apk add --no-cache nodejs@edge nodejs-npm@edge libuv@edge 
