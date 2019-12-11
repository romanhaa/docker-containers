setwd('/docker/docker_containers-master/Rstudio/')

source('install_packages_function.R')

# packages for single cell analysis
packages_to_install <- c(
  'batchelor',
  'destiny',
  'cellranger',
  'diffusionMap',
  'DropletUtils',
  'MetaNeighbor',
  'monocle',
  'muscat',
  'phateR',
  'Seurat',
  'SC3',
  'scater',
  'scde',
  'scMerge',
  'scran',
  'sctransform',
  'SingleR',
  'slingshot',
  'cole-trapnell-lab/garnett',
  'cole-trapnell-lab/monocle3',
  'ggjlab/scMCA',
  'velocyto-team/velocyto.R',
  'BUStools/BUSpaRse',
  'theislab/kBET',
  'timoast/signac'
)

install_packages(packages_to_install)

# alternative location for R packagesq
place_for_other_libraries <- '/other_R_libraries'
dir.create(place_for_other_libraries, recursive = TRUE)

# Seurat 2.3.4
devtools::install_version(
  'Seurat',
  version = '2.3.4',
  repos = 'http://cran.us.r-project.org',
  lib = place_for_other_libraries,
  quiet = TRUE
)
