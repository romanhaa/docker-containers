FROM ubuntu:18.04

RUN \
  apt update --yes && \
  apt upgrade --yes

RUN \
  apt install --yes \
    wget \
    python3 \
    python3-pip

RUN apt install --yes \
  libxml2-dev \
  libz-dev

RUN \
  pip3 install \
    scanpy \
    python-igraph \
    louvain
