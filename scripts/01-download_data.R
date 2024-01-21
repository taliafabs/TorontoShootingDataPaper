#### Preamble ####
# Purpose: Downloads and saves the TTC Streetcar Delay data 2023
# from Open Data Toronto
# Author: Talia Fabregas
# Date: January 16 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: Know where to obtain TTC streetcar delay data from
# 2014-2019


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(janitor)

#### Download data ####

# get the streetcar package from opendatatoronto
streetcarpackage <- show_package("b68cb71b-44a7-4394-97e2-5d2f41462a5d")

# list the package resources
list_package_resources(streetcarpackage)

# choose the spreadsheet showing streetcar delays data from 2023
streetcardelays23 <- get_resource(list_package_resources(streetcarpackage)[12,2])

### Save data ###
write_csv(streetcardelays23, "inputs/data/raw_data.csv")
d


         
