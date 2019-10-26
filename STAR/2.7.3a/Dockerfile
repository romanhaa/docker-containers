FROM ubuntu:19.04

RUN apt update --yes && \
  apt upgrade --yes && \
  apt install --yes \
  build-essential \
  libz-dev \
  wget
RUN mkdir /tools && \
  cd /tools && \
  wget https://github.com/alexdobin/STAR/archive/2.7.3a.tar.gz && \
  tar -xzf 2.7.3a.tar.gz && \
  cd STAR-2.7.3a/source && \
  make STAR
ENV PATH="/tools/STAR-2.7.3a/source:${PATH}"
