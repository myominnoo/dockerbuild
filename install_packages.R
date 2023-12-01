# installing package imports packages
pkg_list <- c(
    "devtools", 
    "tidyverse",
    "purrr", 
    "fs", 
    "usethis", 
    "here", 
    "flexdashboard", 
    "flextable", 
    "plotly",
    "reactable", 
    "leaflet", 
    "leafpop", 
    "ggprism", 
    "ggsci", 
    "hrbrthemes", 
    "RSocrata", 
    "rmarkdown", 
    "quarto"
)

install.packages(pkgs = pkg_list, repos = "https://cran.rstudio.com/")

# devtools::install_github("RamiKrispin/coronavirus", upgrade = "never")

fail <- FALSE

for(i in pkg_list){
    
    if(i %in% rownames(installed.packages())){
        cat(i, "...OK\n")
    } else {
        cat(i, "...Fail\n")
        fail <- TRUE
    }
    
    if(fail){
        stop("Fail to install some package/s")
    }
}