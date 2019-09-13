FROM bioconductor/release_core2

RUN sudo apt-get update -y && sudo apt-get install libmagick++-dev -y \
&& R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
"tidyverse", "devtools", "edgeR", "wesanderson", "ggpmisc", \
"GenomicAlignments", "ggseqlogo", "ComplexHeatmap",\
"circlize", "DESeq2", "derfinderPlot", "Rsubread", \
"regionReport", "rafalib", "TxDb.Hsapiens.UCSC.hg38.knownGene",\
"NOISeq", "clusterProfiler", "gridExtra", "ggbio", "vqv/ggbiplot",  ask = F))'
