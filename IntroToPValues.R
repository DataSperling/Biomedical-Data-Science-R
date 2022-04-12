# introduction to p-values

# using dplyr
library(dplyr)

# import data for experiment and population
data <- read.csv("/home/sperling/Jdrive/DataAnal_4_LifeSci_PH525Xx/dataSets/femaleMiceWeights.csv")
population <- unlist(population)
population <- read.csv("/home/sperling/Jdrive/DataAnal_4_LifeSci_PH525Xx/dataSets/femaleControlsPopulation.csv")
population <- unlist(population)


# create control group eating chow diet
control <- filter(data,Diet=="chow") %>% 
  dplyr::select(Bodyweight) %>% 
  unlist

# create treatment group eating high-fat (hf) diet
treatment <- filter(data,Diet=="hf") %>% 
  dplyr::select(Bodyweight) %>% 
  unlist


