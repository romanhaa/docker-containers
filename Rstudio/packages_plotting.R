setwd('/docker/docker_containers-master/Rstudio/')

source('install_packages_function.R')

# packages for plotting
packages_to_install <- c(
  'alluvial',
  'beeswarm',
  'circlize',
  'ComplexHeatmap',
  'cowplot',
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
  'patchwork',
  'pheatmap',
  'plotly',
  'RColorBrewer',
  'VennDiagram',
  'viridis',
  'erocoar/gghalves'
)

install_packages(packages_to_install)
