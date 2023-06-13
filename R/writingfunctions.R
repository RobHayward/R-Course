# Writing functions
squared <- function(x){
  x^2
}
squared(5)
squared(100)
#----------------------------
exponential <- function(x, y){
  x^y
}
exponential(2, 3)
exponential(5,2)
#===================================

#========================
mystats <- function(x){
  x <- x[!is.na(x)]
  n <- length(x)
  m <- mean(x)
  s <- sd(x)
  med <- median(x)
  skew <- sum((x-m)^3/s^3)/n
  kurt <- sum((x-m)^4/s^4)/n - 3
  max <- max(x)
  min <- min(x)
  mydescriptive <- round(data.frame(
    "Number" = n,
    "Mean" = m,
    "Median" = med,
    "Std dev" = s,
    "Skew" = skew,
    "Kurtosis" = kurt,
    "Maximum" = max,
    "Minimum" = min), 2)
  return(mydescriptive)
}
mydata <- c(NA, rnorm(1000))
mystats(mydata)
