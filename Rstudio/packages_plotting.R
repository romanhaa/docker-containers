source('/Rscripts/install_packages_function.R')

# packages for plotting
packages_to_install <- c(
  'alluvial',
  'beeswarm',
  'circlize',
  'ComplexHeatmap',
  'cowplot',
  'vankesteren/firatheme',
  'chrisamiller/fishplot',
  'ggalluvial',
  'gganimate',
  'ggbeeswarm',
  'ggbio',
  'ggdendro',
  'ggExtra',
  'ggforce',
  'thomasp85/ggfx',
  'erocoar/gghalves',
  'ggpubr',
  'ggraph',
  'ggrepel',
  'ggridges',
  'ggsci',
  'ggsignif',
  'jcolors',
  'patchwork',
  'pheatmap',
  'plotly',
  'RColorBrewer',
  'UpSetR',
  'VennDiagram',
  'viridis',
  'wesanderson'
)

install_packages(packages_to_install)
