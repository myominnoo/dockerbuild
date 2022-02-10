FROM myominnoo/tidyverse:4.1.2

COPY . .

RUN R -e "options(repos = c(ropensci = 'https://ropensci.r-universe.dev', CRAN = 'https://cloud.r-project.org'));
install.packages('ruODK');"

