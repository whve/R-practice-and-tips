# R TIPS ----
# MODULE: FOR LOOPS ----
# PROJECT SETUP

library(tidyverse)

mpg %>%
    group_by(manufacturer) %>%
    group_split() %>%
    walk(function(x) {
        write_csv(x, path = str_c("./001_read_multiple_files/output/", unique(x$manufacturer), ".csv"))
    }) %>% 
    View()
# togo cheak dir

mpg$manufacturer

