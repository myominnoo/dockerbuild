FROM rocker/r-base:4.3.1

LABEL maintainer="Myo Minn Oo <dr.myominnoo@gmail.com>"
    
# Install system dependencies for the tidyverse R packages
RUN apt-get install -y \
    make
    libcurl4-openssl-dev
    libssl-dev
    pandoc
    libxml2-dev

RUN install2.r --error \
  tidyverse \
  ggprism
