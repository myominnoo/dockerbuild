FROM docker.io/rkrispin/covid19italy:prod.0.3.1

LABEL maintainer="Rami Krispin <rami.krispin@gmail.com>"


# installing R packages
RUN mkdir packages0
COPY install_packages.R packages0/
RUN Rscript packages0/install_packages.R

RUN sudo apt-get update && sudo apt-get install pandoc -y
RUN echo 'This works'