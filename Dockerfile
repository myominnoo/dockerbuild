FROM docker.io/myominnoo/baser:v4.1.2

LABEL maintainer="Myo Minn Oo <dr.myominnoo@gmail.com>"

# install the dependencies of the R package located at `/portalDS`
RUN apt-get -y update -qq \ 
  && apt-get install -y --no-install-recommends \
    libgsl0-dev \ 
  && R -e "devtools::install_dev_deps('/portalDS', dep = TRUE)" \ 
  && R -e "install.packages('tidyr', repos='http://cran.rstudio.com/')" \ 
  && R -e "install.packages('testthat', repos='http://cran.rstudio.com/')"
  
  
RUN R -e 'devtools::check()' 
RUN R CMD INSTALL portalDS
  
  


RUN sudo apt-get update && sudo apt-get install pandoc -y

