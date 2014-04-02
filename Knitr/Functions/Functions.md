Writing functions
--------------------------------
The advantage of programming rather than using menus is that it allows you to create your own functions for things that you want to do.  This is carried out using function and the list of inputs.  

Basic function
---------------------------------

```r
square <- function(x) {
    x^2
}
square(2)
```

```
## [1] 4
```

```r
square(3)
```

```
## [1] 9
```

```r
square(4)
```

```
## [1] 16
```

Any calculations can be produced in the same format.  For example, to automatically calculate the future values using the equation $FV = PV(1 + R)^n$

```r
FV <- function(PV = 100, R, n = 1) {
    FV = PV * (1 + R)^n
}
a <- FV(R = 0.05)
a
```

```
## [1] 105
```

```r
a <- FV(100, 0.06)
a
```

```
## [1] 106
```

```r
a <- FV(R = 0.1, n = 2)
a
```

```
## [1] 121
```

See if you can do the same for the present value $PV = \frac{FV}{(1 +R)^n}$

There are some examples and further information from the UCLA [here](http://www.ats.ucla.edu/stat/r/library/intro_function.htm).

Control Structures in R
--------------------------------------
The commands for, if and while can be used to create loops.  Vectors are generally preferred to loops but...

Common structures
* if, else:  testing a condition
* for: execute a loop a fixed number of times
* while: repeate a loop *while* condiction is true


```r
x <- 10
if (x > 3) {
    y <- 10
} else {
    y <- 0
}
y
```

```
## [1] 10
```

This can be used for selecting particular events. For example, if you have a dataframe with US, German and UK data it would be possible to say country <- "Germany" and if(country == "Germany", plot(da[,3])) with column three containing the German data etc.


```r
for (i in 1:10) {
    print(i)
}
```

```
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
## [1] 6
## [1] 7
## [1] 8
## [1] 9
## [1] 10
```

This could be used for running through a list of tests that you want to make.  For example. 


```r
x <- c(2, 3, 4, 5, 8, 10, 3, 4)
for (i in c(mean, sd)) {
    a <- i(x)
    print(a)
}
```

```
## [1] 4.875
## [1] 2.748
```

And while

```r
count <- 0
while (count < 10) {
    print(count)
    count <- count + 1
}
```

```
## [1] 0
## [1] 1
## [1] 2
## [1] 3
## [1] 4
## [1] 5
## [1] 6
## [1] 7
## [1] 8
## [1] 9
```

Obviously, you have to make sure that the while will come to an end, otherwise you will be in an infinite loop. 
