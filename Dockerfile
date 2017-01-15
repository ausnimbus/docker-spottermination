FROM ausnimbus/alpine:latest

MAINTAINER AusNimbus <support@ausnimbus.com.au>

LABEL io.k8s.display-name="Spot Termination Watcher" \
      io.k8s.description="AWS Spot Instance Termination Watcher"

COPY terminationwatcher /usr/bin/

ENTRYPOINT ["/usr/bin/terminationwatcher"]
