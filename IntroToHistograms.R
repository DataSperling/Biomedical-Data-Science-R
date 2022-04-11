# using histograms in R to summarise data and show its distribution

# install.packages("UsingR")
library(UsingR)

# select father heights from data set
f_height <- father.son$fheight

# show size of dataset 1078
length(f_height)

# take random sample of 20 rounded to nearest tenth of inch
round(sample(f_height, 20), 1)

# plot histogram
hist(f_height, 
     breaks=seq(floor(min(f_height)),
     ceiling(max(f_height))),
     main="Father Height Histogram",
     xlab="Height in inches")



