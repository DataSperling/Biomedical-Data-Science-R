# using QQ-plots to 

# install.packages("UsingR")
library(UsingR)

# select father heights from data set
f_height <- father.son$fheight

# calculate sample mean using mean() 67.6871 INCHES!
mean(f_height)

# to calculate the proportion of individuals taller than 70 inches using empirical data
# 0.2059369 ~ 21%
mean(f_height>70)

# to calculate the same using the normal approximation
# 0.1997182 ~ 20%
1 - pnorm(70,
          mean(f_height),
          sd(f_height))

# calculate the same proportions for shorter than 70 inches

# to calculate the proportion of individuals shorter than 70 inches using empirical data
# 0.7940631 ~ 79%
mean(f_height<70)

# to calculate the same using the normal approximation
# 0.8002818 ~ 80%
pnorm(70,
     mean(f_height),
     sd(f_height))

# this can be done systematically using a quantile-quantile plot (QQ-plot)

# generate sequence for x-axis in QQ-plot
qq_seq <- seq(0.01,
              0.99,
              0.01)

# compute percentiles for data using above sequence
qs_per <- quantile(f_height,
                   qq_seq)


# compute equivalent percentiles for normal distribution
normal_per <- qnorm(qq_seq,
                    mean(f_height),
                    sd(f_height))

# plot normal and "synthetic" percentiles to see difference
plot(normal_per,
     qs_per,
     main="QQ-plot showing correlation of f_heights to normal approximation",
     xlab="Normal percentiles",
     ylab="Heigth in inches")

# add identity line
abline(0, 1)

# shortcut to produce this using qqnorm() and qqline()
qqnorm(f_height)
qqline(f_height)



