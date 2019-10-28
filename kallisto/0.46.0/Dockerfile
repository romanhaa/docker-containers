FROM ubuntu:19.04

RUN apt-get update --yes && \
  apt-get upgrade --yes && \
  apt-get install --yes \
  wget
RUN cd / && \
  mkdir tools && \
  cd tools && \
  wget https://github.com/pachterlab/kallisto/releases/download/v0.46.0/kallisto_linux-v0.46.0.tar.gz && \
  wget https://github.com/BUStools/bustools/releases/download/v0.39.3/bustools_linux-v0.39.3.tar.gz && \
  tar -xf kallisto_linux-v0.46.0.tar.gz && \
  tar -xf bustools_linux-v0.39.3.tar.gz
ENV PATH="/tools/kallisto:/tools/bustools:${PATH}"
