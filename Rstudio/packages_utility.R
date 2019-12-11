setwd('/docker/docker_containers-master/Rstudio/')

source('install_packages_function.R')

# utility packages
packages_to_install <- c(
  'remotes',
  'devtools',
  'tidyverse',
  'concaveman',
  'dendextend',
  'densityClust',
  'DT',
  'fastcluster',
  'FlowSOM',
  'foreign',
  'future.apply',
  'gam',
  'golem',
  'h2o',
  'hdf5r',
  'lwgeom',
  'magrittr',
  'phylogram',
  'pryr',
  'reshape2',
  'reticulate',
  'rgdal',
  'roxygen2',
  'Rtsne',
  'scales',
  'shiny',
  'shinydashboard',
  'shinyjs',
  'shinythemes',
  'sf',
  'stringi',
  'tensorflow',
  'tsne',
  'umap',
  'uwot',
  'XML',
  'xml2',
  'jalvesaq/colorout',
  'krlmlr/ulimit',
  'statsbomb/StatsBombR'
)

install_packages(packages_to_install)

