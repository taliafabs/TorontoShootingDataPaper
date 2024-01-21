#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
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
# shooting_data <- read.csv("inputs/data/shooting_occurrences_data.csv")
shootingoccurrencespackage <- 
  show_package("f29feb49-ceb1-44bf-a2b6-5fc6a0e6147a")
resources <- list_package_resources(shootingoccurrencespackage)
shootingoccurrencesdata <- 
  get_resource(list_package_resources(shootingoccurrencespackage)[2,2])



#### Save data ####
write_csv(shootingoccurrencesdata, "inputs/data/raw_data.csv") 

         
