FROM centos:7

MAINTAINER AusNimbus <support@ausnimbus.com.au>

LABEL io.k8s.description="AWS Spot Instance Termination Watcher" \
      io.k8s.display-name="Spot Termination Watcher"

COPY terminationwatcher /usr/bin/

ENTRYPOINT ["terminationwatcher"]
