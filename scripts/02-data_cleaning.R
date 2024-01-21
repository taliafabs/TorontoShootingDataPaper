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
raw_data <- read_csv("inputs/data/raw_data.csv")

# clean the data
streetcardelaydata <- 
  raw_data |>
  janitor::clean_names() |>
  select(date, line, time, day, location, 
         incident, min_delay, min_gap, bound) |>
  mutate(line = as.character(line)) |>
  mutate(am_rush = if_else(day %in% c("Monday", "Tuesday", "Wednesday",
                                      "Thursday", "Friday") &
                             ((hour(time) >= 7) & (hour(time) <= 9)), 1, 0
    
  )) |>
  mutate(pm_rush = if_else(day %in% c("Monday", "Tuesday", "Wednesday",
                                      "Thursday", "Friday") &
                             ((hour(time) >= 4) & (hour(time) <= 6)), 1, 0
  )) |>
  rename(streetcar_line = line) |>
  tidyr::drop_na()


### Save data ###
# save the clean data into the outputs data folder
write_csv(streetcardelaydata, "outputs/data/streetcar_data.csv")
