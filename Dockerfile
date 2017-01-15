FROM alpine:3.5

MAINTAINER AusNimbus <support@ausnimbus.com.au>

LABEL io.k8s.description="AWS Spot Instance Termination Watcher" \
      io.k8s.display-name="Spot Termination Watcher"

RUN apk add --update bash curl && rm -rf /var/cache/apk/*

COPY terminationwatcher /usr/bin/

ENTRYPOINT ["terminationwatcher"]
