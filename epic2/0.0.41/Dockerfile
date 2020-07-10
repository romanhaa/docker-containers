FROM continuumio/miniconda3:4.8.2

# update packages
RUN apt-get update --yes \
  && apt-get upgrade --yes \
  && rm -rf /var/lib/apt/lists/*

# install epic2
RUN conda install --yes -c bioconda "epic2=0.0.41"
