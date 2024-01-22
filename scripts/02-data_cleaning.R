#### Preamble ####
# Purpose: Cleans the raw streetcar delays data obtained from Open Data Toronto.
# Author: Talia Fabregas
# Date: January 16 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data first.


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(dplyr)

### Clean data ###

# read in the raw data that was already downloaded
raw_shooting_data <- read_csv("inputs/data/raw_shooting_data.csv")

# clean the data
shootingdata <- 
  raw_shooting_data |>
  janitor::clean_names() |>
  select(index, occurred_year, geo_division, count) |>
  tidyr::drop_na()


### Save data ###
# save the clean data into the outputs data folder
write_csv(shootingdata, "outputs/data/toronto_shooting_data.csv")
