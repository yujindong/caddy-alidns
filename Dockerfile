FROM caddy:2.3.0-builder AS builder

LABEL MAINTAINER="yujindong <83575615@qq.com>"
RUN xcaddy build \
    --with github.com/caddy-dns/alidns@v1.0.21


FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
