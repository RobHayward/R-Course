#First R session
4+5
4*5
4/5
4^5
sqrt(5)
log(5)

test<-2*3
test

test=2/3
test

myname="What"
myname

#objects
#vectors
#concatonate
mynumbers<-c(3,5,6,7,9)
mynumbers
mynumbers<-c(1:10)
mynumbers
#sequence
?seq
a<-seq(0.5,2.5, length=100)
a
b<-seq(1,10,1)
b

mynumbers<-1:12
m<-matrix(mynumbers, nrow=4)
m

x<-seq(-pi,pi,length=10)
y<-sin(x)
plot(x,y)
lines(x,y)

x<-seq(-pi,pi,length=100)
y<-sin(x)
plot(x,y, type='l')

z<-rnorm(100)
hist(z, prob=TRUE)
mu<-mean(z)
sig<-sd(z)
x<-seq(-4,4,length=500)
y<-dnorm(x,mu,sig)
lines(x,y, col='red')
  
