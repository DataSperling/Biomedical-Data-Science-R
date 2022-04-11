# looking at non-normally distributed data: executive pay

# install.packages("UsingR")
library(UsingR)

# look at histogram to see distribution: skewed low
hist(exec.pay)

# look at QQ-plot: fat right tail therefore mean() and sd() are poor summary of data
qqnorm(exec.pay)
qqline(exec.pay)

# solution: use boxplot
boxplot(exec.pay,
        ylab="x 10^4 USD",
        ylim=c(0,400))

# compare mean (27) and median (60). Median approx half mean
mean(exec.pay)
median(exec.pay)

# NB: outlier is 

