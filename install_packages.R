if (!requireNamespace("remotes")) install.packages("remotes")

# Minimal install without vignettes
remotes::install_github(
    "ropensci/ruODK@main", 
    dependencies = TRUE, 
    upgrade = "ask",
    build_vignettes = FALSE)