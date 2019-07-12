FROM ubuntu:cosmic

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
    rsync \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get clean
