FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/dulli/caddy-wol

FROM caddy:latest

RUN apk --no-cache add curl

COPY --from=builder /usr/bin/caddy /usr/bin/caddy