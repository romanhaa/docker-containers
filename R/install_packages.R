packages_to_install <- c(
  "alluvial",
  "beeswarm",
  "biomaRt",
  "cellranger",
  "ChIPseeker",
  "circlize",
  "clusterProfiler",
  "ComplexHeatmap",
  "cole-trapnell-lab/garnett",
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
  "exaexa/EmbedSOM",
  "exaexa/DiffSOM",
  "future.apply",
  "GenomicFeatures",
  "GenomicRanges",
  "ggalluvial",
  "gganimate",
  "ggbeeswarm",
  "ggbio",
  "ggdendro",
  "ggExtra",
  "ggforce",
  "ggrepel",
  "ggridges",
  "ggsignif",
  "h2o",
  "jalvesaq/colorout",
  "magrittr",
  "MetaNeighbor",
  "monocle",
  "msigdbr",
  "org.Hs.eg.db",
  "org.Mm.eg.db",
  "phateR",
  "pheatmap",
  "phylogram",
  "plotly",
  "RColorBrewer",
  "reshape2",
  "reticulate",
  "Rmagic",
  "romanhaa/cerebroPrepare",
  "roxygen2",
  "Rsamtools",
  "Rtsne",
  "SC3",
  "scales",
  "scater",
  "scde",
  "scran",
  "sessioninfo",
  "Seurat",
  "shiny",
  "shinydashboard",
  "shinyjs",
  "shinythemes",
  "tidyverse",
#  "thomasp85/patchwork",
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

# install BiocManager
install.packages("BiocManager", repos = "http://cran.us.r-project.org")

# install list of packages
BiocManager::install(packages_to_install)
# pak::pkg_install(packages_to_install, ask = FALSE)

# metacell
BiocManager::install("metacell",  site_repository = "tanaylab.bitbucket.io/repo", update = FALSE)

# velocyto
devtools::install_github("velocyto-team/velocyto.R")

# alternative location for R packages
place_for_other_libraries <- "/other_R_libraries"

dir.create(
  place_for_other_libraries,
  recursive = TRUE
)

# Seurat 3
devtools::install_github(
  repo = "satijalab/seurat",
  ref = "release/3.0",
  lib = place_for_other_libraries,
  upgrade = FALSE
)

# Monocle 3
devtools::install_github(
  "cole-trapnell-lab/DDRTree",
  ref = "simple-ppt-like",
  lib = place_for_other_libraries,
  upgrade = FALSE
)
devtools::install_github(
  "cole-trapnell-lab/L1-graph",
  lib = place_for_other_libraries,
  upgrade = FALSE
)
devtools::install_github(
  "cole-trapnell-lab/monocle-release",
  ref = "monocle3_alpha",
  lib = place_for_other_libraries,
  upgrade = FALSE
)

