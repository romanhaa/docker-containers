
# metacell
BiocManager::install("metacell", site_repository = "tanaylab.bitbucket.io/repo", update = FALSE)

BiocManager::install("ggjlab/scMCA", dependencies = FALSE)

BiocManager::install("exaexa/EmbedSOM")

BiocManager::install("exaexa/DiffSOM", dependencies = FALSE)

BiocManager::install("jalvesaq/colorout")

BiocManager::install("romanhaa/cerebroPrepare", dependencies = FALSE)

BiocManager::install("thomasp85/patchwork", dependencies = FALSE)

# because version on CRAN has problems
BiocManager::install("thomasp85/ggforce", dependencies = FALSE)

BiocManager::install("velocyto-team/velocyto.R", dependencies = FALSE)

# itertools is a dependency of loomR
BiocManager::install("itertools")
BiocManager::install("mojaveazure/loomR", ref = "develop", dependencies = FALSE)

# BiocManager::install("ChristophH/sctransform", ref = "develop", dependencies = FALSE)

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
# install.packages(
#   "Seurat",
#   repo = c("satijalab.org/ran/", getOption("repos")),
#   type = "binary",
#   lib = place_for_other_libraries
# )

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

