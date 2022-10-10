FROM ubuntu:jammy

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    rsync \
    iputils-ping \
    git-core \
    curl \
    ca-certificates \
    dbndns \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
