# This Dockerfile is used to build an image based on the bcb420-base-image with
# the additional packages DESeq2 and pheatmap installed, as part of the Docker homework
# assignment for BCB420 winter 2024.

FROM risserlin/bcb420-base-image:winter2024-arm64
EXPOSE 8787

RUN R -e "BiocManager::install(c('DESeq2', 'pheatmap'))"
RUN "mkdir /home/rstudio/data"

# To build: docker build -t custom-image . 