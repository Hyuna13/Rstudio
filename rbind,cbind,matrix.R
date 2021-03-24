s1 = 10
s2 = "Hello"
s3 = FALSE
s4 = 1 - 3i

v1 = c(3, 10 ,12)
v2 = c("Taylor", "Hyuna")
v3 = c(TRUE, FALSE, TRUE)

v4 = c(v1 ,20, 30)

v1 = 1:5
v2 = 5:1
v3 = -3.3:5

v1 = seq(from=1, to=5, by=1)

v5 = sequence(10)

v4 = sequence(0)

v1 = rep("a", times=5)
v1 = rep("a", each=5)
v2 = rep(c("a", "b"), times=5, each=5)

v1 = c(20, 46, 51)
names(v1) = c("Hyuna", "Maria", "Taeguen")
v1
weight = c(11,12,13,14)
weight[1:3]
weight[c(1,2)]

gender = c('f','m','f','f')
gender
gender_factor = factor(gender)
gender_factor
levels(gender_factor)

gender_factor2 = factor(gender, levels = c('f','m'), labels=c('female','male'))
gender_factor2

gender_factor3 = factor(gender, ordered=TRUE)
gender_factor3

#Matrix
v1 =  1:3
v2 = 4:6

m1 = rbind(v1, v2)

m2 = cbind(v1, v2)
m2

m3 = matrix(1:4, nrow=2, ncol=2)
m3

m4 = matrix(1:4, nrow=2, ncol=2, byrow=TRUE)
m4

#
v1 =1:5
m1 = matrix(1:6, nrow=2, ncol=3)






