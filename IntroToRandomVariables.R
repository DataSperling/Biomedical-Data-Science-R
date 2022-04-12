# look at random variables

# using dplyr
library(dplyr)

# read mice weights csv from data directory
data <- read.csv("/home/sperling/Jdrive/DataAnal_4_LifeSci_PH525Xx/dataSets/femaleMiceWeights.csv")

# select and filter data for control data (normal chow diet)
control <- filter(data,Diet=="chow") %>% 
  dplyr::select(Bodyweight) %>% 
  unlist

# select and filter data for variable under study (hf = high fat diet)
treatment <- filter(data,Diet=="hf") %>% 
  dplyr::select(Bodyweight) %>% 
  unlist

# look at difference in means 3.020833g
mean( treatment) - mean(control)

# is difference in mass due to chance or due to diet?

# here we have access to population data for this demonstration

population <- read.csv("/home/sperling/Jdrive/DataAnal_4_LifeSci_PH525Xx/dataSets/femaleControlsPopulation.csv")

mean(population)
