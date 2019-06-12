
# metacell
BiocManager::install("metacell", site_repository = "tanaylab.bitbucket.io/repo")
BiocManager::install("ggjlab/scMCA", dependencies = FALSE)
BiocManager::install("exaexa/EmbedSOM")
BiocManager::install("exaexa/DiffSOM", dependencies = FALSE)
BiocManager::install("jalvesaq/colorout")
BiocManager::install("romanhaa/cerebroPrepare", dependencies = FALSE)
BiocManager::install("thomasp85/patchwork", dependencies = FALSE)
# because version on CRAN has problems
# BiocManager::install("thomasp85/ggforce", dependencies = FALSE, update = TRUE)
BiocManager::install("cole-trapnell-lab/garnett", update = TRUE, ask = FALSE)
BiocManager::install("velocyto-team/velocyto.R", dependencies = FALSE)
# itertools is a dependency of loomR
BiocManager::install("itertools", update = TRUE)
BiocManager::install("mojaveazure/loomR", ref = "develop", dependencies = FALSE)
# cowplot 1.0 (not on CRAN yet)
BiocManager::install("wilkelab/cowplot")
BiocManager::install("cole-trapnell-lab/monocle3")

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
