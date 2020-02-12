FROM ubuntu:19.04

# install system libraries
RUN apt-get update --yes && \
  apt-get upgrade --yes && \
  apt-get install --yes \
    build-essential \
    libperl-dev

# install PennCNV
# the file "PennCNV-1.0.5.tar.gz" must be present in the directory from where
# "docker build" process is launched
COPY PennCNV-1.0.5.tar.gz /opt/PennCNV-1.0.5.tar.gz
RUN cd /opt && \
  tar xzf PennCNV-1.0.5.tar.gz && \
  rm PennCNV-1.0.5.tar.gz
ENV PATH="/opt/PennCNV-1.0.5:${PATH}"
RUN cd /opt/PennCNV-1.0.5/kext && \
  make
