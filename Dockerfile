FROM r-base:3.5.1

RUN apt update -y && apt upgrade -y
RUN apt install -y \
  python-dev \
  python-pip \
  python3-dev \
  python3-pip
RUN apt install -y libhdf5-dev
RUN pip install umap-learn
RUN pip3 install umap-learn

# use script here as soon as repo is public
# ADD https://github.com/romanhaa/cerebro-prepare/archive/master.tar.gz /cerebro/
# CMD Rscript /cerebro/Docker/install_packages.R
RUN Rscript -e 'install.packages("BiocManager", repos="http://cran.us.r-project.org")'
RUN Rscript -e 'BiocManager::install(c("Seurat", "tidyverse", "reshape2", "scales", "gridExtra", "enrichR", "scran", "biomaRt", "Rmagic"))'
# test
# RUN Rscript -e 'Seurat::RunUMAP()'

CMD R
