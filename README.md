# Dockerfile for `kinaklub/filmfest-base`

This repository contains Dockerfile for a base image reused in
[kinaklub/next.filmfest.by](https://hub.docker.com/r/kinaklub/next.filmfest.by/).
We've split the image into 2 parts to speed up build process.

## Overview

We use `Makefile` for automating docker image build process. Image
version is taken from submodule using `git descrbie --tags`.

## Build Requirements

* make
* docker client (available without `sudo`)
* git

## Build Process

Build docker images:

```sh
make
# or
make build
```

Publish docker image:

```sh
make push
```

Publish docker image as `latest`:

```sh
make push-latest
```

Long story shot, in order to release a new version one needs to:

* add git tag with an appropriate version
* build image using `make`
* push image using `make push` (and optionally `make push-latest`)
