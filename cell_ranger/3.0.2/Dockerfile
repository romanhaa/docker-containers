FROM ubuntu:19.04

RUN apt-get update --yes && \
  apt-get upgrade --yes
COPY cellranger-3.0.2.tar.gz /cellranger-3.0.2.tar.gz
RUN tar -xzf cellranger-3.0.2.tar.gz
ENV PATH="/cellranger-3.0.2:${PATH}"
