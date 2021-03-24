## ??????
Job <- scan()
55.6 83.3 43.4 58.1 31.6 55.6 60.7 64.6 73.3 55.6 64.3
52.8 22.7 46.3 71.4 53.8 64.5 67.9 71.4 80.0 59.5 40.5
77.1 58.6 65.4 52.4 66.7 91.3 41.3 72.1 61.9 78.4 63.6
41.0 65.2 81.3 54.8 19.6 50.0 53.1 41.2 56.5

### ?߽?��ġ

# ????
n <- length(Job)
sum(Job)/n
mean(Job)              

# ????????
x <- c(0.28,-0.28)
w <- c(700,300)
weighted.mean(x,w)

# ?߾Ӱ?
median(Job)            

# ????????
mean(Job,trim=0.1)
mean(Job,trim=0)       
mean(Job,trim=0.5)
# ???????跮
Job <- sort(Job)
trimtrim <- c(1:3, (n-2):n)
(Job[-trim])

# ?ֺ???
mode(Job)    #???
freq <- table(Job)
maxcmaxfreq <- max(freq)
h(freq == maxfreq)


### ????
# ??��
ends <- range(Job)
diff(ends)
max(Job)-min(Job)

# ????��??
quantile(Job)
Q <- quantile(Job,probs=c(0.25,0.5, 0.75))
IQR(Job)
Q[3]-Q[1]
# ???ڱ׸?
boxplot(Job)
boxplot(Job,horizontal=TRUE,xlab="??????")

# employment rate ǥ??????
var(Job)
sd(Job)
# ǥ??ȭ
xbar <- mean(Job)
s <- sd(Job)
z <-(Job-xbar)/s
scale(Job)
# ????????????
abdev <- abs(Job-median(Job))
sum(abdev)/(n-1)   # sum(abs(Job-median(Job)))/(n-1)

# ????????
sd(Job)/mean(Job)

### ?????? ????
# ?ֵ? & ÷??
skewness <- sum(z^3)/(n-1)
kurtosis <- sum(z^4)/(n-1)

dist.shape <- function(x)
{
  n <- length(z)
  result <- c(NA,NA)
  if (n >= 2)
  {
    z <- (x-mean(x))/sd(x)
    skew <- sum(z^3)/(n-1)
    kurt <- sum(z^4)/(n-1)
    result <- c(skew,kurt)
  }
  return(result)
}

dist.shape(Job)


