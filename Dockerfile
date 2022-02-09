FROM docker.io/rkrispin/covid19italy:prod.0.3.1

LABEL maintainer="Rami Krispin <rami.krispin@gmail.com>"


RUN sudo apt-get update && sudo apt-get install pandoc -y