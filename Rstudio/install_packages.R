# install BiocManager
install.packages("BiocManager", repos = "http://cran.us.r-project.org")

packages_to_install <- c(
  "alluvial",
  "beeswarm",
  "biomaRt",
  "cellranger",
  "ChIPseeker",
  "circlize",
  "clusterProfiler",
  "ComplexHeatmap",
  "concaveman",
  "DelayedArray",
  "DelayedMatrixStats",
  "dendextend",
  "destiny",
  "devtools",
  "DiffBind",
  "diffusionMap",
  "DT",
  "enrichR",
  "FlowSOM",
  "future.apply",
  "GenomicFeatures",
  "GenomicRanges",
  "gam",
  "ggalluvial",
  "gganimate",
  "ggbeeswarm",
  "ggbio",
  "ggdendro",
  "ggExtra",
  "ggforce",
  "ggpubr",
  "ggrepel",
  "ggridges",
  "ggsignif",
  "h2o",
  "hdf5r",
  "magrittr",
  "MetaNeighbor",
  "monocle",
  "msigdbr",
  "org.Hs.eg.db",
  "org.Mm.eg.db",
  "pandoc",
  "phateR",
  "pheatmap",
  "phylogram",
  "plotly",
  "RColorBrewer",
  "reshape2",
  "reticulate",
  "Rmagic",
  "roxygen2",
  "Rsamtools",
  "Rtsne",
  "SC3",
  "scales",
  "scater",
  "scde",
  "scMerge",
  "scran",
  "sctransform",
  "sessioninfo",
  "Seurat",
  "shiny",
  "shinydashboard",
  "shinyjs",
  "shinythemes",
  "slingshot",
  "tidyverse",
  "topGO",
  "TSCAN",
  "tsne",
  "TxDb.Hsapiens.UCSC.hg19.knownGene",
  "tximport",
  "umap",
  "VennDiagram",
  "viridis",
  "XML",
  "xml2"
)

# install list of packages
BiocManager::install(packages_to_install, update = TRUE, ask = FALSE)
# pak::pkg_install(packages_to_install, ask = FALSE)

# metacell
BiocManager::install("metacell", site_repository = "tanaylab.bitbucket.io/repo")

external_packages_to_install <- c(
  "cole-trapnell-lab/garnett",
  "cole-trapnell-lab/monocle3",
  "dviraran/SingleR",
  "exaexa/DiffSOM",
  "exaexa/EmbedSOM",
  "ggjlab/scMCA",
  "jalvesaq/colorout",
  "romanhaa/cerebroApp",
  "romanhaa/cerebroPrepare",
  "thomasp85/patchwork",
  "velocyto-team/velocyto.R",
  "itertools",
  "wilkelab/cowplot"
)

BiocManager::install(external_packages_to_install, update = TRUE, ask = FALSE)

# itertools is a dependency of loomR
BiocManager::install("mojaveazure/loomR", ref = "develop", dependencies = FALSE)

# alternative location for R packagesq
place_for_other_libraries <- "/other_R_libraries"
dir.create(place_for_other_libraries, recursive = TRUE)

# Seurat 2.3.4
devtools::install_version(
  "Seurat",
  version = "2.3.4",
  repos = "http://cran.us.r-project.org",
  lib = place_for_other_libraries
)
