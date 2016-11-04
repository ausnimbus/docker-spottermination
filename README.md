# Docker Spot Termination Watcher

This repository contains a Dockerfile which watches http://169.254.169.254/latest/meta-data/spot/termination-time
every 5 seconds and calls $URL_ENDPOINT when it is time to terminate.

The container should be installed as a systemd managed process.

## Configuration

The following ENV variables are required:

- URL_ENDPOINT

## Installation

```
[Unit]
Description=AWS Spot Instance Termination Watcher
After=docker.service
Requires=docker.service

[Service]
TimeoutStartSec=10m
ExecStartPre=-/usr/bin/docker kill terminationwatcher
ExecStartPre=-/usr/bin/docker rm terminationwatcher
ExecStartPre=/usr/bin/docker pull ausnimbus/terminationwatcher:latest
ExecStart=/usr/bin/docker run --name terminationwatcher ausnimbus/terminationwatcher:latest \
-e URL_ENDPOINT=xyz
ExecStop=/usr/bin/docker stop -t 30 terminationwatcher

[Install]
WantedBy=multi-user.target
```
