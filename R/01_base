FROM r-base:3.6.0

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

CMD R

##----------------------------------------------------------------------------##
## SYSTEM PACKAGES
##----------------------------------------------------------------------------##

RUN apt-get update --yes && \
  apt-get upgrade --yes

RUN apt-get install --yes \
  python-dev \
  python-pip \
  python3-dev \
  python3-pip \
  python3-tk

# libcurl4-openssl-dev                   curl and RCurl (R package)
# libssl-dev                             openssl (R package)
# libcairo2-dev, libxt-dev               Cairo (R package)
# libxml2-dev                            XML and xml2 (R package)
# libudunits2-dev                        units (R package)
# libhdf5-dev                            hdf5r (R package)
# libv8-dev                              V8 (R package)
# libgdal-dev                            rgdal (R package)
# xorg, libx11-dev, libglu1-mesa-dev     Monocle 3 (R package)
# samtools libboost-all-dev              velocyto (R package)
# libgsl-dev                             gsl -> slingshot (R package)

RUN apt-get install --yes \
  libcurl4-openssl-dev \
  libssl-dev \
  libcairo2-dev libxt-dev \
  libxml2-dev \
  libudunits2-dev \
  libhdf5-dev \
  libv8-dev \
  libgdal-dev \
  xorg libx11-dev libglu1-mesa-dev \
  samtools libboost-all-dev \
  libgsl-dev

##----------------------------------------------------------------------------##
## PYTHON PACKAGES
##----------------------------------------------------------------------------##

# umap-learn                  UMAP
# louvain                     Monocle 3 and scanpy
# phate                       Seurat
# tensorflow, dca             DCA
# python-igraph, fa2, scanpy  scanpy
# leidenalg                   Leiden algorithm for clustering in Seurat v3
# numpy scipy cython numba
# matplotlib scikit-learn
# h5py click pysam velocyto   velocyto
# scvelo                      scVelo
# jupyter                     jupyter

RUN pip3 install \
  umap-learn \
  louvain \
  phate \
  tensorflow \
  dca \
  fa2 \
  python-igraph \
  scanpy \
  leidenalg \
  numpy \
  scipy \
  cython \
  numba \
  matplotlib \
  scikit-learn \
  h5py \
  click \
  pysam \
  jupyter

RUN pip3 install \
  velocyto

RUN pip3 install \
  scvelo

##----------------------------------------------------------------------------##
## (SOME) R PACKAGES
##----------------------------------------------------------------------------##

RUN Rscript -e 'install.packages("pak", repos = "http://cran.us.r-project.org")'
RUN Rscript -e 'pak::pkg_install(c("tidyverse","Seurat"), ask = FALSE)'























