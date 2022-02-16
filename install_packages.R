
install.packages("rnaturalearthhires", repos = "http://packages.ropensci.org", type = "source")
devtools::install_github("r-spatial/mapview")


# # installing package imports packages
# pkg_list <- c("mapview", "sf", "leafpop", "rgeos", "rnaturalearth")
# 
# install.packages(pkgs = pkg_list, repos = "https://cran.rstudio.com/")
# 
# for(i in c(pkg_list,"rnaturalearthhires")){
#     
#     if(!i %in% rownames(installed.packages())){
#         stop(paste("Package", i, "is not available"))
#     }
# }