
# installing R packages
options(repos = c(ropensci = 'https://ropensci.r-universe.dev', 
                  CRAN = 'https://cloud.r-project.org'))
install.packages('ruODK')


# installing package imports packages
pkg_list <- c("dplyr",
              "remotes",
              "devtools",
              "here",
              "readr",
              "lubridate",
              "magrittr",
              "rmarkdown",
              "tidyr",
              "testthat",
              "shiny",
              "plotly",
              "ggplot2",
              "flexdashboard",
              "knitr",
              "usethis",
              "DT")
for(i in pkg_list){
    if(!i %in% rownames(installed.packages())){
        install.packages(pkgs = i, repos = "https://cran.rstudio.com/",
                         dependencies = TRUE)
    }
    
    if(!i %in% rownames(installed.packages())){
        stop(paste("Package", i, "is not available"))
    }
}



devtools::install_github("r-spatial/mapview")
devtools::install_github("ropensci/rnaturalearth")
devtools::install_github("ropensci/rnaturalearthdata")
devtools::install_github("ropensci/rnaturalearthhires")

install.packages("rnaturalearth", dependencies = TRUE)
install.packages("mapview", dependencies = TRUE)






