FROM ubuntu:19.04

RUN apt-get update --yes && \
  apt-get upgrade --yes
COPY cellranger-atac-1.1.0.tar.gz /cellranger-atac-1.1.0.tar.gz
RUN tar -xzf cellranger-atac-1.1.0.tar.gz && \
  rm cellranger-atac-1.1.0.tar.gz
ENV PATH="/cellranger-atac-1.1.0:${PATH}"
