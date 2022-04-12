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
mean(treatment) - mean(control)

# is difference in mass due to chance or due to diet?
# here we have access to population data for this demonstration

population <- read.csv("/home/sperling/Jdrive/DataAnal_4_LifeSci_PH525Xx/dataSets/femaleControlsPopulation.csv")
population <- unlist(population)

# check random generation type and look at random sample 23.31g
RNGkind()
mean(sample(population, 12))

# compare to mean of controls 23.81333g
mean(control)

# compare to treatment 26.83417g
mean(treatment)

# as mouse weight is a natural variable every time we take a sample we get a 
# different value for mass ...

# the question we want to answer is; "What is the chance of seeing a difference in
# mass between sample and treatment groups of 3g by chance?"
