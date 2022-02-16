
devtools::install_github("r-spatial/mapview")
devtools::install_github("ropensci/rnaturalearth")
devtools::install_github("ropensci/rnaturalearthdata")
devtools::install_github("ropensci/rnaturalearthhires")

install.packages("rnaturalearth", dependencies = TRUE)
install.packages("mapview", dependencies = TRUE)

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