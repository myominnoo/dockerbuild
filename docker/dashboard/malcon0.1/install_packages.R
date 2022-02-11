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
              "pkgdown",
              "shiny",
              "plotly",
              "ggplot2",
              "flexdashboard",
              "knitr",
              "usethis",
              "DT")
for(i in pkg_list){
    if(!i %in% rownames(installed.packages())){
        install.packages(pkgs = i, repos = "https://cran.rstudio.com/")
    }
    
    if(!i %in% rownames(installed.packages())){
        stop(paste("Package", i, "is not available"))
    }
}

