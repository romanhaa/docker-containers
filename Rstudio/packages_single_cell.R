source('/Rscripts/install_packages_function.R')

# packages for single cell analysis
packages_to_install <- c(
  'batchelor',
  'BUStools/BUSpaRse',
  'destiny',
  'cellranger',
  'zhouzilu/DENDRO',
  'diffusionMap',
  'DropletUtils',
  'cole-trapnell-lab/garnett',
  'theislab/kBET',
  'MetaNeighbor',
  'monocle',
  'muscat',
  'phateR',
  'Seurat',
  'SC3',
  'scater',
  'scde',
  'scDblFinder',
  'ggjlab/scMCA',
  'scMerge',
  'scran',
  'sctransform',
  'SingleR',
  'slingshot',
  'splatter',
  'velocyto-team/velocyto.R',
  'YosefLab/VISION'
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
