FROM r-base:3.5.1

RUN apt update -y && apt upgrade -y
RUN apt install -y \
  python-dev \
  python-pip \
  python3-dev \
  python3-pip

RUN apt install -y \
  libcurl4-openssl-dev \ # curl and RCurl (R package)
  libssl-dev \ # openssl (R package)
  libcairo2-dev libxt-dev \ # Cairo (R package)
  libxml2-dev \ # XML and xml2 (R package)
  libudunits2-dev \ # units (R package)
  libhdf5-dev # hdf5r (R package)

# for UMAP in Seurat (R package)
RUN pip install umap-learn
RUN pip3 install umap-learn

# get resources from repo
ADD https://github.com/romanhaa/docker_r/archive/master.tar.gz /docker/
RUN tar -xvzf /docker/master.tar.gz -C /docker

# install R packages
RUN Rscript /docker/docker_r-master/install_packages.R

# Seurat installation
RUN Rscript -e 'Seurat::RunUMAP()'

CMD R
