FROM bioconductor/release_core2

RUN R -e 'BiocManager::install(c("tidyverse",  \
"devtools", "edgeR", "wesanderson", "ggpmisc", \
"GenomicAlignments", "ggseqlogo", "ComplexHeatmap", "circlize", "DESeq2", derfinderPlot"))'
