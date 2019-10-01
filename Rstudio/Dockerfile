FROM rocker/rstudio:3.6.1

ENV DEBIAN_FRONTEND noninteractive
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

##----------------------------------------------------------------------------##
## update and install system packages
##----------------------------------------------------------------------------##

RUN apt-get update --yes \
 && apt-get upgrade --yes \
 && apt-get install --yes \
    python-dev \
    python-pip \
    python3-dev \
    python3-pip \
    python3-tk \
    pandoc \
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
    libgsl-dev \
    libbz2-dev \
 && rm -rf /var/lib/apt/lists/*

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
# libbz2-dev                             Rsamtools (R package)

##----------------------------------------------------------------------------##
## install conda to install Python 3.7 afterwards
##----------------------------------------------------------------------------##

RUN cd / \
 && wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
 && bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda3 \
 && export PATH=$PATH:/miniconda3/bin

##----------------------------------------------------------------------------##
## make Python 3.7 default because velocyto requires at least Python 3.6
## - set 'python' command to call Python 2.7
## - set 'python3' command to call Python 3.7
## - rm lsb_release because it prevents pip3 from working properly
##----------------------------------------------------------------------------##

RUN update-alternatives --install /usr/bin/python python /usr/bin/python2.7 1 \
 && update-alternatives --install /usr/bin/python3 python3 /miniconda3/bin/python3.7 2 \
 && python --version \
 && python3 --version \
 && rm /usr/bin/lsb_release

##----------------------------------------------------------------------------##
## install Python packages
## - velocyto is installed in a second run because it doesn't automatically
##   install its dependencies before
## - similarly, scvelo requires velocyto
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

RUN python3 -m pip install \
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
    Cython \
    numba \
    matplotlib \
    scikit-learn \
    h5py \
    click \
    pysam \
    jupyter \
    deeptools

RUN python3 -m pip install \
    "matplotlib>=3.0,<3.1" \
    "pandas<0.24,>=0.19.0" \
    "scipy!=1.3.0,>=1.0" \
    velocyto \
    scvelo

##----------------------------------------------------------------------------##
## download GitHub repo
##----------------------------------------------------------------------------##

ADD https://github.com/romanhaa/docker_containers/archive/master.tar.gz /docker/
RUN tar -xvzf /docker/master.tar.gz -C /docker

##----------------------------------------------------------------------------##
## install R packages
##----------------------------------------------------------------------------##

# install BiocManager first, then some other (big) packages
# this helps when a new package is added to the list of packages to install so one doesn't have to start from scratch
RUN Rscript -e 'install.packages("BiocManager", repos = "http://cran.us.r-project.org")'
RUN Rscript -e 'BiocManager::install(c("remotes","devtools","DiffBind","monocle","Seurat","tidyverse"), update = TRUE, ask = FALSE)'
RUN Rscript /docker/docker_containers-master/Rstudio/install_packages.R
