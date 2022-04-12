# studying the effect of diet on body mass using mice

# using dplyr
library(dplyr)

# read mice weights csv from data directory
data <- read.csv("/home/sperling/Jdrive/DataAnal_4_LifeSci_PH525Xx/dataSets/femaleMiceWeights.csv")

# select and filter data for control data (normal chow diet)
control <- filter(data,Diet=="chow") %>% dplyr::select(Bodyweight) %>% unlist

# select and filter data for variable under study (hf = high fat diet)
treatment <- filter(data,Diet=="hf") %>% dplyr::select(Bodyweight) %>% unlist

# hf diet mice not always heavier: what is a good way to compare the two distributions?

# can easily compare mean treatment (26.83417g) and mean control (23.81333g)
mean(treatment)
mean(control)

# these means are not reproducible as they are random variables, different mice
# groups have different means


