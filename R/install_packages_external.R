
# metacell
BiocManager::install("metacell",  site_repository = "tanaylab.bitbucket.io/repo", update = FALSE)

# Garnett
BiocManager::install("exaexa/EmbedSOM")

BiocManager::install("exaexa/DiffSOM")

BiocManager::install("jalvesaq/colorout")

BiocManager::install("romanhaa/cerebroPrepare")

BiocManager::install("thomasp85/patchwork")

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

