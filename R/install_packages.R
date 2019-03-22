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
  "dendextend",
  "destiny",
  "devtools",
  "DiffBind",
  "diffusionMap",
  "DT",
  "enrichR",
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
  "topGO",
  "TSCAN",
  "tsne",
  "TxDb.Hsapiens.UCSC.hg19.knownGene",
  "tximport",
  "umap",
#  "URD",
  "VennDiagram",
  "viridis",
  "XML",
  "xml2"
)

# install BiocManager
install.packages("BiocManager", repos="http://cran.us.r-project.org")

# install list of packages
BiocManager::install(packages_to_install)

# metacell
BiocManager::install("metacell",  site_repository = "tanaylab.bitbucket.io/repo", update = FALSE)

# colorout
devtools::install_github("jalvesaq/colorout")

# install cerebroPrepare
devtools::install_github("romanhaa/cerebroPrepare")

# install Garnett + dependencies
BiocManager::install(c(
    "DelayedArray",
    "DelayedMatrixStats",
    "org.Hs.eg.db","org.Mm.eg.db"
))
devtools::install_github("cole-trapnell-lab/garnett")




