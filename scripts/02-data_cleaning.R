#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Talia Fabregas
# Date: January 16 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: Run 01-download_data first.


#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("inputs/data/raw_data.csv")
  

cleaned_data <- 
  raw_data |>
  janitor::clean_names() |>
  select(index, occurred_year, geo_division, count) |>
  filter(count >= 1) |>
  tidyr::drop_na()

#### Save data ####
write_csv(cleaned_data, "outputs/data/cleaned_data.csv")
