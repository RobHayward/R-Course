---
output: 
  html_document: 
    theme: united
---
Quantmod examples
========================================================
There are a large number of packages that have been produced by other people.  These packages hold additional functions that allow you to easily accomplish a range of tasks.  You must ``install`` the package to your machine.  This will save all the functions in a directory.  You must then ``require`` the package to make the functions available for a particular session. 

We will look at the ``quantmod`` package. You can read all about the package on ``Cran``.  


```r
#install.packages('quantmod')
require(quantmod)
getSymbols("BAC")
```

```
## [1] "BAC"
```

```r
plot(Cl(BAC), col = 'black')
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-1-1.png" width="672" />

```r
head(BAC)
```

```
##            BAC.Open BAC.High BAC.Low BAC.Close BAC.Volume BAC.Adjusted
## 2007-01-03    53.40    54.18   52.99     53.33   16028200     43.72829
## 2007-01-04    53.33    53.89   53.05     53.67   13175000     44.00707
## 2007-01-05    53.59    53.59   53.03     53.24   10205000     43.65451
## 2007-01-08    53.46    53.64   52.80     53.45    9685900     43.82669
## 2007-01-09    53.60    53.71   52.97     53.50   12546500     43.86768
## 2007-01-10    53.26    53.70   53.16     53.58   10083900     43.93329
```

```r
tail(BAC)
```

```
##            BAC.Open BAC.High BAC.Low BAC.Close BAC.Volume BAC.Adjusted
## 2018-02-13    31.04    31.40   30.76     31.18   76727300        31.18
## 2018-02-14    31.17    32.03   31.06     32.00   97251500        32.00
## 2018-02-15    32.39    32.47   31.87     32.21   68117400        32.21
## 2018-02-16    32.00    32.26   31.92     31.97   62137800        31.97
## 2018-02-20    31.96    32.16   31.75     31.93   58573900        31.93
## 2018-02-21    31.80    32.37   31.77     31.87   71980400        31.87
```

```r
head(Ad(BAC))
```

```
##            BAC.Adjusted
## 2007-01-03     43.72829
## 2007-01-04     44.00707
## 2007-01-05     43.65451
## 2007-01-08     43.82669
## 2007-01-09     43.86768
## 2007-01-10     43.93329
```

```r
?quantmod
?OHLC
```

```
## Help on topic 'OHLC' was found in the following packages:
## 
##   Package               Library
##   quantmod              /home/rob/R/x86_64-pc-linux-gnu-library/3.4
##   xts                   /home/rob/R/x86_64-pc-linux-gnu-library/3.4
## 
## 
## Using the first match ...
```
There are a number of built in plotting functions. 

```r
require(quantmod)
barChart(BAC)
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-2-1.png" width="672" />

```r
addTA(EMA(Cl(BAC)),on=1,col=6)
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-2-2.png" width="672" />

**Practice**

* Automatically download the data for the Ford Motor Company from Yahoo
* Check that the data is okay and find out the start and end dates
* Create a plot of the data


  The getSymbols function can draw data from a number of different sources. Use the ``src`` argument.  

Get Yahoo stock data from Google and Google stock data from Yahoo. 


```r
require(quantmod)
getSymbols("YHOO",src="google") # from google finance
```

```
## [1] "YHOO"
```

```r
head(YHOO)
```

```
##            YHOO.Open YHOO.High YHOO.Low YHOO.Close YHOO.Volume
## 2007-01-03     25.85     26.26    25.26      25.61    26654067
## 2007-01-04     25.64     26.92    25.52      26.85    32565729
## 2007-01-05     26.70     27.87    26.66      27.74    64391379
## 2007-01-08     27.70     28.04    27.43      27.92    25716348
## 2007-01-09     28.00     28.05    27.41      27.58    25624340
## 2007-01-10     27.48     28.92    27.44      28.70    40240872
```

```r
getSymbols("GOOG",src="yahoo") # from yahoo finance
```

```
## [1] "GOOG"
```

```r
head(GOOG)
```

```
##            GOOG.Open GOOG.High GOOG.Low GOOG.Close GOOG.Volume
## 2007-01-03  231.4944  236.7899 229.0652   232.2842    15513200
## 2007-01-04  232.9847  240.4114 232.6618   240.0686    15877700
## 2007-01-05  239.6910  242.1749 237.5102   242.0209    13833500
## 2007-01-08  242.2693  243.3522 239.5420   240.2276     9570600
## 2007-01-09  241.1565  242.5475 239.0452   241.1814    10832700
## 2007-01-10  240.6498  245.1803 239.4625   243.1486    12014600
##            GOOG.Adjusted
## 2007-01-03      232.2842
## 2007-01-04      240.0686
## 2007-01-05      242.0209
## 2007-01-08      240.2276
## 2007-01-09      241.1814
## 2007-01-10      243.1486
```

###Technical trading
The ``ttr`` package is installed and loaded as part of ``quantmod``


```r
require(TTR)
require(quantmod)
barChart(YHOO)
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-4-1.png" width="672" />

```r
candleChart(GOOG,multi.col=TRUE,theme='white', subset = 'last 4 months')
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-4-2.png" width="672" />

```r
chartSeries(YHOO)
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-4-3.png" width="672" />

```r
addMACD()
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-4-4.png" width="672" />

```r
addBBands()
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-4-5.png" width="672" />

**Practice**

* Check the functions that are available in ``TTR`` package
* Create a 5-day moving average of YHOO and call it ``YHOO5DMA``` 
* Plot the Yahoo 5-day moving average. 


###The Fred database
One of the sources is the Fred database.  Here we get the data and chart it in different ways. 

```r
getSymbols('CPIAUCNS',src='FRED')
```

```
## [1] "CPIAUCNS"
```

```r
plot(CPIAUCNS)
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-5-1.png" width="672" />

```r
plot(diff(log(CPIAUCNS)))
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-5-2.png" width="672" />

```r
plot(diff(log(CPIAUCNS), lag=12), main="CPI Inflation")
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-5-3.png" width="672" />


```r
getSymbols('DEXJPUS',src="FRED") # FX rates from FRED
```

```
## 'getSymbols' currently uses auto.assign=TRUE by default, but will
## use auto.assign=FALSE in 0.5-0. You will still be able to use
## 'loadSymbols' to automatically load data. getOption("getSymbols.env")
## and getOption("getSymbols.auto.assign") will still be checked for
## alternate defaults.
## 
## This message is shown once per session and may be disabled by setting 
## options("getSymbols.warning4.0"=FALSE). See ?getSymbols for details.
```

```
## [1] "DEXJPUS"
```

```r
  plot(DEXJPUS, col = 'black', main = "USD-JPY")
```

<img src="QuantmodExamples_files/figure-html/unnamed-chunk-6-1.png" width="672" />

**Practice**

* Go to the St. Louis Fed database
* Find the code for US unemployment data
* Plot the data and beautify the chart
