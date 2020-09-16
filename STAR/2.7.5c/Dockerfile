FROM ubuntu:20.04

RUN apt-get update --yes && \
  apt-get upgrade --yes && \
  apt-get install --yes \
  build-essential \
  libz-dev \
  wget
RUN mkdir /tools && \
  cd /tools && \
  wget https://github.com/alexdobin/STAR/archive/2.7.5c.tar.gz && \
  tar -xzf 2.7.5c.tar.gz && \
  cd STAR-2.7.5c/source && \
  make STAR
ENV PATH="/tools/STAR-2.7.5c/source:${PATH}"
