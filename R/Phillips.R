# Phillips.R
# This code will test the Phillips Curve
da <- read.delim('./Data/WEO_Data.csv', fileEncoding = 'UTF-16LE', 
                 blank.lines.skip = TRUE)
str(da)
head(da)
da[1:2,c(2, 7:length(da)-1)]
head(t(da[1:2,7:length(da)-1]))
tail(t(da[1:2,7:length(da)-1]))
str(t(da[1:2,7:length(da)-1]))
Unemployment = t(unname(da[2, c(7:length(da)-1)]))
head(Unemployment)
Inflation = t(unname(da[1, c(7:length(da)-1)]))
dat <- data.frame("Unemployment" = Unemployment, 
                  "Inflation" = Inflation, row.names = 1980:2022)                  
colnames(dat) <- c("Unemployment", "Inflation")
head(dat)
tail(dat)
str(dat)
plot(1980:2022, dat$Unemployment, type = 'l', ylim = c(0, 15))
lines(1980:2022, dat$Inflation, col = 'red')
plot(dat$Unemployment, dat$Inflation)
eq1 <- lm(dat$Inflation ~ dat$Unemployment)
summary(eq1)
names(eq1)
names(dat)
eq1$coefficients
plot(eq1$residuals)
#================================================
dat2 <- dat[9:length(dat$Unemployment) -3, ]
head(dat)
tail(dat)
head(dat2)
tail(dat2)
plot(1985:2019, dat2$Unemployment, type = 'l', ylim = c(0, 15))
lines(1985:2019, dat2$Inflation, col = 'red')
plot(dat2$Unemployment, dat2$Inflation)
eq2 <- lm(dat2$Inflation ~ dat2$Unemployment)
summary(eq2)
names(eq2)
names(dat2)
eq2$coefficients
abline(eq2)
plot(1985:2019, eq2$residuals, main = "Residuals from 
     Phillips Curve Regression")
eq3 <- lm(unname(eq2$residuals) ~ I(1:35))
summary(eq3)
plot(1985:2019, eq2$residuals)
abline(eq3, col = 'red')
lines(1985:2019, eq3$fitted.values, col = 'red')     
text(1995, 1, labels = "Negative \n inflation trend")
