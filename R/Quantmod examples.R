# This really is meant as a clean way to
# copy and paste line by line to R
# If you paste the whole thing, it sort of loses
# something...

require(quantmod)
getSymbols("BAC")
plot(BAC)
head(BAC)
tail(BAC)
head(Ad(BAC))
?quantmod
?OHLC
barChart(BAC)
addTA(EMA(Cl(BAC)),on=1,col=6)

getSymbols("YHOO",src="google") # from google finance
plot(YHOO)
getSymbols("GOOG",src="yahoo") # from yahoo finance
plot(GOOG)
getSymbols('DEXJPUS',src="FRED") # FX rates from FRED
plot(DEXJPUS)
barChart(YHOO)
candleChart(GOOG,multi.col=TRUE,theme='white')
require(TTR)
chartSeries(YHOO)
addMACD()
addBBands()

getSymbols('CPIAUCNS',src='FRED')
plot(CPIAUCNS)
plot(diff(log(CPIAUCNS)))
plot(diff(log(CPIAUCNS), lag=12), main="CPI Inflation")

