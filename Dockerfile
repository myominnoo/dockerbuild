FROM docker.io/myominnoo/dashboard:malcon0.1

LABEL maintainer="Myo Minn Oo <dr.myominnoo@gmail.com>"

RUN apt-get update && apt-get install -y --no-install-recommends \
  libharfbuzz-dev \
  libfribidi-dev \
  && rm -rf /var/lib/apt/lists/*

RUN sudo apt-get update && sudo apt-get install libharfbuzz-dev libfribidi-dev -y

RUN sudo apt-get install libudunits2-dev libproj-dev libgdal-dev -y

RUN sudo apt-get update && sudo apt-get install libharfbuzz-dev libfribidi-dev -y

# installing R packages
RUN mkdir packages
COPY install_packages.R packages/
RUN Rscript packages/install_packages.R
COPY install_geo_packages.R packages/
RUN Rscript packages/install_geo_packages.R

RUN sudo apt-get update && sudo apt-get install pandoc -y

# Updating the git version
RUN apt-get update && \
      apt-get -y install sudo

RUN sudo apt-get install software-properties-common -y
RUN sudo add-apt-repository ppa:git-core/ppa && \
        sudo apt-get update -y && \
        sudo apt-get install git -y

RUN git --version