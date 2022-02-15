
# installing R packages
options(repos = c(ropensci = 'https://ropensci.r-universe.dev', CRAN = 'https://cloud.r-project.org'))
install.packages('ruODK')

# install required packages
install.packages("flexdashboard", dependencies = TRUE)


# # installing package imports packages
# pkg_list <- c("dplyr",
#               "remotes",
#               "devtools",
#               "here",
#               "readr",
#               "lubridate",
#               "magrittr",
#               "rmarkdown",
#               "tidyr",
#               "testthat",
#               "shiny",
#               "plotly",
#               "ggplot2",
#               "flexdashboard",
#               "knitr",
#               "usethis",
#               "DT")
# for(i in pkg_list){
#     if(!i %in% rownames(installed.packages())){
#         install.packages(pkgs = i, repos = "https://cran.rstudio.com/", 
#                          dependencies = TRUE)
#     }
#     
#     if(!i %in% rownames(installed.packages())){
#         stop(paste("Package", i, "is not available"))
#     }
# }
# 
# # install.packages('devtools')
# devtools::install_github('r-lib/ragg', dependencies = TRUE)
# 
# 
# 
# # installing package imports geo packages
# pkg_list <- c("mapview", "sf", "leafpop", "rgeos", "rnaturalearth")
# 
# install.packages(pkgs = pkg_list, repos = "https://cran.rstudio.com/")
# 
# install.packages("rnaturalearthhires", repos = "http://packages.ropensci.org", type = "source")
# 
# for(i in c(pkg_list,"rnaturalearthhires")){
#     
#     if(!i %in% rownames(installed.packages())){
#         stop(paste("Package", i, "is not available"))
#     }
# }
# 
