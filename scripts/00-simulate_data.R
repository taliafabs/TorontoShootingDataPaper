#### Preamble ####
# Purpose: Simulate Toronto Shooting Occurrences Data 2014-2019
# Author: Talia Fabregas
# Date: January 16 2024 
# Contact: talia.fabregas@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Know where to obtain Toronto Shooting Occurrences Data


#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("janitor")
library(tidyverse)
library(janitor)

#### Simulate data ####
simulated_data <- 
  tibble(
    # Use 1 through 100 to do 100 simulations.
    "SimulateDelays" <- 1:100,
    # Randomly pick a year, with replacement, from 2014-2019
    "Year" = sample(
      x=c("2014", "2015", "2016", "2016", "2017", "2018", "2019"),
      size=100,
      replace=TRUE
    ),
    # Randomly pick a GeoDivision with replacement
    "GeoDivision" = sample(
      x=c("D11", "D12", "D13", "D14", "D22", "D23", "D31", "D32", "D33",
          "D41", "D42", "D43", "D51", "D52", "D53", "D54/D55"),
      size=100,
      replace=TRUE
    )
  )

simulated_data



