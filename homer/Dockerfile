# FROM ubuntu:19.04
FROM r-base:3.6.2

##----------------------------------------------------------------------------##
## install system libraries
##----------------------------------------------------------------------------##
RUN apt-get update --yes && \
  apt-get upgrade --yes && \
  apt-get install --yes \
    default-jre \
    build-essential \
    wget \
    libxml2-dev

##----------------------------------------------------------------------------##
## install conda (v4.6.14 because later versions had a problem with installing
## the dependencies in the step below)
##----------------------------------------------------------------------------##
RUN cd / \
  && wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
  && bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda3
ENV PATH "$PATH:/miniconda3/bin"

##----------------------------------------------------------------------------##
## install samtools
##----------------------------------------------------------------------------##
RUN conda install --quiet --yes -c bioconda samtools

##----------------------------------------------------------------------------##
## install R and package depedencies
##----------------------------------------------------------------------------##
RUN Rscript -e 'install.packages("BiocManager", repos = "http://cran.us.r-project.org")' \
  && Rscript -e 'BiocManager::install("edgeR")' \
  && Rscript -e 'BiocManager::install("DESeq2")'

##----------------------------------------------------------------------------##
## install Homer
##----------------------------------------------------------------------------##
RUN cd / \
  && mkdir homer \
  && cd homer \
  && wget http://homer.ucsd.edu/homer/configureHomer.pl \
  && perl configureHomer.pl -install
ENV PATH "$PATH:/homer/bin/"

##----------------------------------------------------------------------------##
## install hg38 and mm10 reference data
##----------------------------------------------------------------------------##
RUN perl /homer/configureHomer.pl -install mm10 hg38
