FROM alpine:edge

LABEL maintainer "ilya@ilyaglotov.com"

RUN apk update \
  && apk add libcap \
             gmp-dev \
             json-c-dev \
             libpcap \
             libunistring-dev \
             \
  && apk add --virtual .deps \
                        build-base \
                        byacc \
                        cmake \
                        flex \
                        gengetopt \
                        git \
                        libpcap-dev \
                        linux-headers \
                        \
  && ln -s /usr/bin/yacc /usr/bin/byacc \
  && git clone --branch=master \
               --depth=1 \
               https://github.com/zmap/zmap.git \
               \
  && cd zmap \
  && cmake . \
  && make -j4 \
  && make install \
  \
  && apk del .deps \
  && rm -rf /zmap /var/cache/apk/*

RUN adduser -D zmap \
  && setcap cap_net_raw=eip /usr/local/sbin/zmap

USER zmap

ENTRYPOINT ["/usr/local/sbin/zmap"]
