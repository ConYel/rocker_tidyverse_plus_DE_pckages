FROM bioconductor/bioconductor_docker:devel

RUN apt-get update
RUN R -e 'BiocManager::install(ask = F)' && R -e 'BiocManager::install(c("magick", \
"tidyverse", "vroom", "devtools", "wesanderson", "ggpmisc", "ggseqlogo", \
"hexbin", "pheatmap", "RColorBrewer", "ComplexHeatmap", "circlize", "gtools", "Rsubread", \
"NOISeq", "edgeR", "DESeq2", "derfinder", "derfinderPlot", "regionReport", \
"EDASeq", "RUVSeq", "sva", "rafalib", "org.Hs.eg.db", "org.Mm.eg.db", \
"BSgenome.Mmusculus.UCSC.mm10", "TxDb.Mmusculus.UCSC.mm10.knownGene",\
"TxDb.Hsapiens.UCSC.hg38.knownGene", "BSgenome.Hsapiens.UCSC.hg38",\
"kableExtra", "gridExtra", "clusterProfiler", "gProfileR", "statmod", \
"ggbio", "vqv/ggbiplot", "thomasp85/patchwork","recount", "plyranges", \
"rbamtools", "annotatr", "tximport", "VennDiagram", "PerformanceAnalytics", \
"GO.db", ask = F))' && R -e 'tinytex::install_tinytex()'
