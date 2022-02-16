install.packages("pacman")

pacman::p_load(
    rio,          # File import
    here,         # File locator
    skimr,        # get overview of data
    tidyverse,    # data management + ggplot2 graphics 
    gtsummary,    # summary statistics and tests
    rstatix,      # summary statistics and statistical tests
    janitor,      # adding totals and percents to tables
    scales,       # easily convert proportions to percents  
    flextable     # converting tables to pretty images
)
