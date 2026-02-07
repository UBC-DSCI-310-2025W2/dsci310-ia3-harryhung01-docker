FROM rocker/rstudio:4.4.2

RUN Rscript -e "install.packages('remotes', repos = 'https://cloud.r-project.org')" && \
    Rscript -e "remotes::install_version('cowsay', version = '1.0.0', repos = 'https://cloud.r-project.org')"
