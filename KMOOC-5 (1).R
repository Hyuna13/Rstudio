##### number of cases
n <- 10
k <- 3

factorial(k)
# permutation
factorial(n)/factorial(n-k)
factorial(1000)
prod(n:(n-k+1))
# repeated permutation 
n^k
# combinationose(n,k)
# ?ßº?repeated combination n+k-1,k)

### Birthday Problem
n <- 365
nomembers <- c(5,10,20,30,40,50)
probs <- NULL
for (k in nomembers)
{
  j <- 0:(k-1)
  probs <- c(probs,prod(1-j/n))
}
probs <- round(probs,4)
names(probs) <- nomembers

# ?????? Èprobability- scan()
1427 1309	1243 1225 1149 1105 1167 1174 1235 1163 1128 1031

monthday <- c(31,28,31,30,31,30,31,31,30,31,30,31)
births <- rep(daily,monthday)
length(births)
birthprob <- births/sum(births)

# k=50?? when?? Ç¥ sample
x <- sample.int(n,k,replace=T,prob=birthprob)
result <- length(unique(x)) == k

# k=50?? ?when ? 10 Ç¥??
 samples- 10000
result <- 0
for (i in 1:noSim)
{
  x <- sample.int(n,k,replace=T,prob=birthprob)
  result <- result + (length(unique(x)) == k)
}
cat("# of ?????the case of all different birthdays:,"\n")
cat("?????? ?the probability of all different birthdayst/noSim,"\n")

# k=5,10,2when 0,30,40,50?? ?? 10  Ç¥??
 samples- 10000
for (k in nomembers)
{
  result <- 0
  for (i in 1:noSim)
  {
    x <- sample.int(n,k,replace=T,prob=birthprob)
    result <- result + (length(unique(x)) == k)
  }
  cat(k,"?? ????? when selecting k at("  # of ????the case of all different birthdayst,"\n")
  cat("  ??????the probability of all different birthdayst/noSim,"\n")
}

## Ç¥??Á¤?Ôsampling normal distribution  Á¤?Ôº????? Èprobability density function???? ?????cumulative distribution function ?????????Random number extraction function3,by=0.01)
plot(z,dnorm(z),type="l",ylab="f(z)")
abline(h=0)
dnorm(0)
lines(c(-1,-1),c(0,0.4))
lines(c(1.95,1.95),c(0,0.4))
lines(c(-1,1.95),c(0.4,0.4))

Area <- (1.95+1)*0.4
NoSim <- c(500,1000,5000,10000,50000)
for (n in NoSim)
{
  x <- runif(n,-1,1.95)
  y <- runif(n,0,0.4)
  fx <- dnorm(x)
  ratio <- sum(y < fx)/n
  cat("N =",n,"\t Ratio =",round(ratio,4),"\t Prob =",round(ratio*Area,4),"\n") 
}
cat("True Probability:",round(pnorm(1.95)-pnorm(-1),4))








