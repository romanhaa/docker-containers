source('install_packages_function.R')

# packages for compbio
packages_to_install <- c(
  'biomaRt',
  'ChIPseeker',
  'clusterProfiler',
  'DelayedArray',
  'DelayedMatrixStats',
  'DiffBind',
  'enrichR',
  'GenomicFeatures',
  'GenomicRanges',
  'gProfileR',
  'gprofiler2',
  'msigdbr',
  'org.Hs.eg.db',
  'org.Mm.eg.db',
  'rGREAT',
  'Rmagic',
  'Rsamtools',
  'Rsubread',
  'topGO',
  'TSCAN',
  'TxDb.Hsapiens.UCSC.hg19.knownGene',
  'tximport'
)

install_packages(packages_to_install)
