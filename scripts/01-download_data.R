#### Preamble ####
# Purpose: Downloads and saves the Shooting Occurrences Data, 2014-2019 from
# OpenData Toronto portal.
# from Open Data Toronto
# Author: Talia Fabregas
# Date: January 16 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: Know where to obtain Toronto Shooting Occurrences Data from
# 2014-2019 


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(janitor)

#### Download data ####

# get the streetcar package from opendatatoronto
shootingoccurrencespackage <- show_package("f29feb49-ceb1-44bf-a2b6-5fc6a0e6147a")

# list the package resources
list_package_resources(shootingoccurrencespackage)

# choose the spreadsheet showing streetcar delays data from 2023
shootingoccurences <- 
  get_resource(list_package_resources(shootingoccurrencespackage)[2,2])

### Save data ###
write_csv(shootingoccurences, "inputs/data/raw_shooting_data.csv")



         
