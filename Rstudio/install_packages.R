# install BiocManager
install.packages('BiocManager', repos = 'http://cran.us.r-project.org')

install_packages <- function(packages) {
  for ( i in packages ) {
    if ( grepl(i, pattern = '/') ) {
      name <- strsplit(i, split = '/')[[1]][2]
    } else {
      name <- i
    }
    if ( (name %in% library()$results[,1] ) == FALSE ) {
      message(paste0('[', format(Sys.time(), '%Y-%m-%d %H:%M:%S'), "] '", i, "' will be installed."))
      BiocManager::install(i, update = TRUE, ask = FALSE, quiet = TRUE)
      if ( (name %in% library()$results[,1] ) == FALSE ) {
        message(paste0('[', format(Sys.time(), '%Y-%m-%d %H:%M:%S'), "] '", i, "' installation failed."))
        stop()
      } else {
        message(paste0('[', format(Sys.time(), '%Y-%m-%d %H:%M:%S'), "] '", i, "' successfully installed."))
      }
    } else {
      message(paste0('[', format(Sys.time(), '%Y-%m-%d %H:%M:%S'), "] '", i, "' already installed."))
    }
  }
}

# packages for first round of installation
packages_to_install <- c(
  'alluvial',
  'batchelor',
  'beeswarm',
  'biomaRt',
  'cellranger',
  'ChIPseeker',
  'circlize',
  'clusterProfiler',
  'ComplexHeatmap',
  'cowplot',
  'concaveman',
  'DelayedArray',
  'DelayedMatrixStats',
  'dendextend',
  'destiny',
  'devtools',
  'DiffBind',
  'diffusionMap',
  'DT',
  'enrichR',
  'FlowSOM',
  'foreign',
  'future.apply',
  'GenomicFeatures',
  'GenomicRanges',
  'gam',
  'ggalluvial',
  'gganimate',
  'ggbeeswarm',
  'ggbio',
  'ggdendro',
  'ggExtra',
  'ggforce',
  'ggpubr',
  'ggraph',
  'ggrepel',
  'ggridges',
  'ggsignif',
  'golem',
  'gProfileR',
  'gprofiler2',
  'h2o',
  'hdf5r',
  'lwgeom',
  'magrittr',
  'MetaNeighbor',
  'monocle',
  'msigdbr',
  'org.Hs.eg.db',
  'org.Mm.eg.db',
  'phateR',
  'pheatmap',
  'phylogram',
  'plotly',
  'RColorBrewer',
  'reshape2',
  'reticulate',
  'rgdal',
  'Rmagic',
  'roxygen2',
  'Rsamtools',
  'Rtsne',
  'SC3',
  'scales',
  'scater',
  'scde',
  'scMerge',
  'scran',
  'sctransform',
  'Seurat',
  'shiny',
  'shinydashboard',
  'shinyjs',
  'shinythemes',
  'sf',
  'slingshot',
  'stringi',
  'tensorflow',
  'tidyverse',
  'topGO',
  'TSCAN',
  'tsne',
  'TxDb.Hsapiens.UCSC.hg19.knownGene',
  'tximport',
  'umap',
  'VennDiagram',
  'viridis',
  'XML',
  'xml2',
  'cole-trapnell-lab/garnett',
  'cole-trapnell-lab/monocle3',
  'exaexa/EmbedSOM',
  'ggjlab/scMCA',
  'jalvesaq/colorout',
  'krlmlr/ulimit',
  'velocyto-team/velocyto.R',
  'itertools'
)

install_packages(packages_to_install)

BiocManager::install('satijalab/seurat-wrappers', update = TRUE, ask = FALSE, force = TRUE, quiet = TRUE)
BiocManager::install('romanhaa/cerebroApp@develop', update = TRUE, ask = FALSE, force = TRUE, quiet = TRUE)

# update not on CRAN yet
BiocManager::install('thomasp85/patchwork', update = TRUE, ask = FALSE, force = TRUE, quiet = TRUE)

# needs EmbedSOM installed before
BiocManager::install('exaexa/DiffSOM', update = TRUE, ask = FALSE, quiet = TRUE)

# metacell
BiocManager::install('metacell', site_repository = 'tanaylab.bitbucket.io/repo', quiet = TRUE)

# itertools is a dependency of loomR
BiocManager::install('mojaveazure/loomR', ref = 'develop', dependencies = FALSE, quiet = TRUE)

# install tensorflow
tensorflow::install_tensorflow()
BiocManager::install('Irrationone/cellassign', update = TRUE, ask = FALSE, force = TRUE, quiet = TRUE)

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

# SingleR
BiocManager::install(version = 'devel', ask = FALSE, update = FALSE)
BiocManager::install('SingleR')
