# using histograms in R to summarise data and show its distribution

# install.packages("UsingR")
library(UsingR)

# select father heights from data set
f_height <- father.son$fheight

# show size of dataset 1078
length(f_height)

# show a random sample of 20 rounded to nearest tenth of inch
round(sample(f_height, 20), 1)

# plot histogram
hist(f_height, 
     breaks=seq(floor(min(f_height)),
     ceiling(max(f_height))),
     main="Father Height Histogram",
     xlab="Height in inches")

# calculate series of proportions for which to calculate ecdf
p_rops <- seq(floor(min(f_height)),
            ceiling(max(f_height)),
            0.1)

# plot ecdf of f_heights and p_rops calculated above
plot(p_rops,
     ecdf(f_height)(p_rops),
     type="l",
     xlab="Height in inches",
     ylab="F(x)")


