# installing package imports packages
pkg_list <- c(
    "devtools", 
    "usethis", 
    "here", 
    "tidyverse",
    "flextable", 
    "ggprism", 
    "ggsci", 
    "hrbrthemes"
)

## install pacman for meta package management.
install.packages("pacman")

pacman::p_load(pkg_list, character.only = TRUE)

