# introduction to dplyr

# using dplyr
library(dplyr)

# read csv from data directory
data <- read.csv("/home/sperling/Jdrive/DataAnal_4_LifeSci_PH525Xx/dataSets/femaleMiceWeights.csv")

# view data as 
View(data)

# consider mice with chow diet using filter
controls <- filter(data, Diet == "chow")

# show control data
View(controls)

# show just weights using select
control_bodyweights <- select(controls, Bodyweight)

# show control  weights
View(control_bodyweights)

# convert to vector
unlist(control_bodyweights)

# use pipe to prepare same data
controls <- filter(data, Diet == "chow") %>% 
  select(Bodyweight) %>% 
  unlist

# view result
View(controls)

# can calculate mean now 23.81333
mean(controls)



















