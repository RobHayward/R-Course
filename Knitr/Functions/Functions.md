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

For, if, while
--------------------------------------
The commands for, if and while can be used to create loops.  Vectors are generally preferred to loops but...



