# Use rocker/rstudio 4.4.2 as the base image
FROM rocker/rstudio:4.4.2

# Switch to root to install packages
USER root

# Install the {remotes} package, then install a pinned version of {cowsay}
RUN Rscript -e "install.packages('remotes', repos = 'https://cloud.r-project.org')" && \
    Rscript -e "remotes::install_version('cowsay', version = '1.0.0', repos = 'https://cloud.r-project.org')"

# Switch back to the rstudio user
USER rstudio
