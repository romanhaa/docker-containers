FROM r-base:3.5.2

# update packages
RUN apt-get update --yes && apt-get upgrade --yes

# update R packages and install required R packages
RUN Rscript -e 'install.packages()'
RUN Rscript -e 'install.packages(c("Rcpp","RcppEigen", "RInside", "Matrix"))'

# install dependencies
RUN apt-get install --yes \
  libbamtools-dev \
  libboost-all-dev \
  zlib1g-dev \
  bzip2 \
  build-essential \
  cmake \
  git

# download dropEst repo
git clone https://github.com/hms-dbmi/dropEst.git

# build dropEst from source
mkdir dropEst/build
cd dropEst/build
cmake .. && make
make install

