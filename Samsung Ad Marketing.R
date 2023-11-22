library(ggplot2)
library(readxl)
df <- read_excel("~/Documents/RData1204/SamsungAdAnalysis.xlsx")
#Histogram
hist(df$SalesAd2, freq=F,col='orange',main="Sample Dataset", xlab='SalesAd2')
lines(density(df$SalesAd2), col="blue")
# Summary Statistics
summary(df)
#One Sample t-test
t.test(df, mu=55000, alternative = "greater")
