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
    # Use 1 through 100 to do 100 simulations.
    "Simulation" <- 1:100,
    # Randomly pick a year, with replacement, 100 times.
    "Year" = sample(
      x=c(2014, 2015, 2016, 2017, 2018, 2019),
      size=100,
      replace=TRUE
    ),
    # Randomly pick a geodivision, with replacement, 100 times.
    "GeoDivision" = sample(
      x=c("D11", "D12", "D13", "D14", "D22", "D23", "D31", "D32", "D33", "D41",
          "D41", "D42", "D43", "D51", "D52", "D53", "D54/55"),
      size=100,
      replace=TRUE
    )
  )

simulated_data



