## "C:\statistics"에 자료가 있다고 가정
setwd("/Users/hyunabae/Documents/R")
## 데이터 불러오기  
pie <- scan("pie.txt", what="character")

## 도수분포표
Sale <- table(pie)
Total <- sum(Sale)
SaleProp <- 100*Sale/Total
SaleProp <- round(SaleProp,1)



## 원도표
pie(SaleProp)
names(SaleProp)
Percent <- c("고구마(11.5%)","딸기(22.2%)","바나나(7.3%)",
             "블루베리(20.1%)","애플(25.2%)","초코(13.7%)")
pie(SaleProp)

## 막대그래프
barplot(Sale,ylim=c(0,60),space=0.0)
abline(h=0)
abline(h=c(20,40,60),lty=3)

## 취업률
Job <- scan()
55.6 83.3 43.4 58.1 31.6 55.6 60.7 64.6 73.3 55.6 64.3
52.8 22.7 46.3 71.4 53.8 64.5 67.9 71.4 80.0 59.5 40.5
77.1 58.6 65.4 52.4 66.7 91.3 41.3 72.1 61.9 78.4 63.6
41.0 65.2 81.3 54.8 19.6 50.0 53.1 41.2 56.5


# R에서는 구간을 초과 ~ 이하로 설정: (, ]
JobCut <- cut(Job, breaks=c(10, 39.9, 49.9, 59.9, 69.9, 79.9, 100))
JobFreq <- table(JobCut)
JobProp <- round(JobFreq/sum(JobFreq),3)
CumJobProp <- cumsum(JobProp)
Result <- cbind(JobFreq,JobProp,CumJobProp)
colnames(Result) <- c("학과수","상대도수","누적상대도수")
rownames(Result) <- c("10%이상~40%미만","40%이상~50%미만","50%이상~60%미만",
                   "60%이상~70%미만","70%이상~80%미만","80%이상~100%")

# R에서는 구간을 초과 ~ 이하로 설정: (, ]
hist(Job)
hist(Job,freq=FALSE)  # hist(Job, probability=TRUE)
hist(Job,breaks = c(10, 39.99, 49.99, 59.99, 69.99, 79.99, 100), 
     main = "취업률 히스토그램", xlab = "취업률", ylab = "밀도")

par(mfrow=c(1,2))
hist(Job,freq=FALSE,ylim=c(0,0.035))  # hist(Job, probability=TRUE)
hist(Job,breaks = c(10, 39.99, 49.99, 59.99, 69.99, 79.99, 100), 
     main = "취업률 히스토그램", xlab = "취업률", ylab = "밀도",ylim=c(0,0.035))

# 줄기-잎 그림
stem(Job)


