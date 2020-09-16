FROM ubuntu:20.04

RUN apt-get update --yes && \
  apt-get upgrade --yes
COPY cellranger-4.0.0.tar.gz /cellranger-4.0.0.tar.gz
RUN tar -xzf cellranger-4.0.0.tar.gz && \
  rm cellranger-4.0.0.tar.gz
ENV PATH="/cellranger-4.0.0:${PATH}"
