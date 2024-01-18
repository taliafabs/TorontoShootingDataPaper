#### Preamble ####
# Purpose: Downloads and saves the data from Open Data Toronto
# Author: Talia Fabregas
# Date: January 16 2024
# Contact: talia.fabregas@mail.utoronto.ca
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)
library(dplyr)
library(janitor)

#### Download data ####
shooting_data <- read.csv("inputs/data/shooting_occurrences_data.csv")



#### Save data ####
write_csv(shooting_data, "inputs/data/raw_data.csv") 

         
