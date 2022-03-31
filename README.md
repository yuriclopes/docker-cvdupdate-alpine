# ClamAV Updater Database

[![Build](https://github.com/yuriclopes/docker-cvdupdate-alpine/actions/workflows/build.yml/badge.svg)](https://github.com/yuriclopes/docker-cvdupdate-alpine/actions/workflows/build.yml)

- Latest Alpine image with CVDUpdate

## Tags

  - `latest`: Latest stable version

## How to Build

This image is built on Docker Hub automatically, but if you need to build the image on your own locally, do the following:

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. `cd` into this directory.
  3. Run `docker build -t cvdupdate-alpine:test .`

## How to Use

  1. [Install Docker](https://docs.docker.com/engine/installation/).
  2. Pull this image from Docker Hub: `docker pull yuriclopes/cvdupdate-alpine:latest` (or use the image you built earlier, e.g. `cvdupdate-alpine:test`).
  3. Run a container from the image: `docker run --detach yuriclopes/cvdupdate-alpine:latest`.

## Author

Created in 2022 by Yuri Corona Lopes.