# Docker Spot Termination Watcher

[![Build Status](https://travis-ci.org/ausnimbus/docker-terminationwatcher.svg?branch=master)](https://travis-ci.org/ausnimbus/docker-terminationwatcher)
[![Docker Repository on Quay](https://quay.io/repository/ausnimbus/terminationwatcher/status "Docker Repository on Quay")](https://quay.io/repository/ausnimbus/terminationwatcher)

This repository contains a Dockerfile which watches http://169.254.169.254/latest/meta-data/spot/termination-time
every 5 seconds and calls $URL_ENDPOINT when it is time to terminate.

The container should be installed as a Kubernetes daemonset.

## Configuration

The following ENV variables are required:

- URL_ENDPOINT
