FROM docker.io/rocker/tidyverse:4.1.2

LABEL maintainer="Myo Minn Oo <dr.myominnoo@gmail.com>"

RUN R -e "options(repos = c(ropensci = 'https://ropensci.r-universe.dev', CRAN = 'https://cloud.r-project.org')); install.packages('ruODK');"

