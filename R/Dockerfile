FROM r-base:3.5.2

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8  

RUN apt update --yes && apt upgrade --yes
RUN apt install --yes \
  python-dev \
  python-pip \
  python3-dev \
  python3-pip \
  python3-tk

# curl and RCurl (R package)
RUN apt install --yes libcurl4-openssl-dev

# openssl (R package)
RUN apt install --yes libssl-dev

# Cairo (R package)
RUN apt install --yes libcairo2-dev libxt-dev

# XML and xml2 (R package)
RUN apt install --yes libxml2-dev

# units (R package)
RUN apt install --yes libudunits2-dev

# hdf5r (R package)
RUN apt install --yes libhdf5-dev

# V8 (R package)
RUN apt install --yes libv8-dev

# rgdal (R package)
RUN apt install --yes libgdal-dev

# for Monocle 3
RUN apt install --yes \
  xorg \
  libx11-dev \
  libglu1-mesa-dev 

# for UMAP in Seurat (R package)
RUN pip3 install umap-learn

# for Monocle 3 and scanpy
RUN pip3 install louvain

# for phate in Seurat (R package)
RUN pip3 install phate

# dca (deep count autoencoder)
RUN pip3 install tensorflow dca

# scanpy
RUN pip3 install scanpy python-igraph

# get resources from repo
ADD https://github.com/romanhaa/docker_containers/archive/master.tar.gz /docker/
RUN tar -xvzf /docker/master.tar.gz -C /docker

# install R packages
RUN Rscript /docker/docker_containers-master/R/install_packages.R

CMD R
