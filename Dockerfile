FROM rocker/rstudio:3.6.0

RUN apt-get update -qq && apt-get -y --no-install-recommends install \
  libxml2-dev \
  libcairo2-dev \
  libsqlite-dev \
  libmariadbd-dev \
  libmariadb-client-lgpl-dev \
  libpq-dev \
  libssh2-1-dev \
  && install2.r --error \
    --deps TRUE \
    tidyverse \
    dplyr \
    devtools \
    formatR \
    remotes \
    selectr \
    BiocManager \
    edgeR \
    derfinderPlot \
    ggseqlogo \
    ComplexHeatmap \
    circlize \
    DESeq2 \
    GenomicAlignments \
    ggpmisc \
    wesanderson 
    
