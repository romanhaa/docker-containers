packages_to_install <- c(
  "alluvial",
  "beeswarm",
  "biomaRt",
  "cellranger",
  "ChIPseeker",
  "circlize",
  "clusterProfiler",
  "ComplexHeatmap",
  "dendextend",
  "destiny",
  "devtools",
  "DiffBind",
  "diffusionMap",
  "DT",
  "enrichR",
  "GenomicFeatures",
  "GenomicRanges",
  "ggalluvial",
  "gganimate",
  "ggbeeswarm",
  "ggbio",
  "ggdendro",
  "ggExtra",
  "ggrepel",
  "ggridges",
  "ggsignif",
  "h2o",
  "magrittr",
  "MetaNeighbor",
  "monocle",
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
  "Rsamtools",
  "Rtsne",
  "SC3",
  "scales",
  "scater",
  "scde",
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

install.packages("BiocManager", repos="http://cran.us.r-project.org")

BiocManager::install(packages_to_install)

BiocManager::install("metacell",  site_repository = "tanaylab.bitbucket.io/repo", update = FALSE)






