#### Preamble ####
# Purpose: Simulate TTC streetcar delay data for 2023.
# Author: Talia Fabregas
# Date: January 16 2024 
# Contact: talia.fabregas@mail.utoronto.ca 
# License: MIT
# Pre-requisites: Know where to obtain 2023 TTC Streetcar Delay Data from.


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
    "Line" = sample(
      x=c("509", "505", "504", "510", "506", "501", "512", "310", "37",
          "503", "511", "301", "600", "306", "304", "5204", "899",
          "5101", "540", "500", "555", "999", "502", "705", "202", "507", 
          "513", "508", "312", "525"),
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



