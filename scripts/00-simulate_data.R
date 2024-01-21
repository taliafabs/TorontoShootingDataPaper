#### Preamble ####
# Purpose: Read in data from the Shooting Occurrences Toronto Data 2014-2019 and 
# make a graph of the number of shootings per year in each area of Toronto (geodivision)
# Author: Talia Fabregas
# Date: January 16 2024 
# Contact: talia.fabregas@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Know where to get Toronto shooting occurrences data from.


#### Workspace setup ####
# install.packages("tidyverse")
# install.packages("janitor")
library(tidyverse)
library(janitor)

#### Simulate data ####
simulated_data <- 
  tibble(
    # Use 1 through 1000 to do 1000 simulations.
    "SimulateDelays" <- 1:1000,
    # Randomly pick a year, with replacement, 1000 times.
    "StreetcarLine" = sample(
      x=c("37", "501", "502", "503", "505"),
      size=1000,
      replace=TRUE
    ),
    # Randomly pick a date from 2023, with replacement, 1000 times
    "Date" = sample(
      x=c(seq(as.Date("2023-01-01"),as.Date("2023-12-31"),by="1 day")),
      size=1000,
      replace=TRUE
    )
  )

simulated_data



