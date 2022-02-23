x <- c(1,2,3)
y <- c(4,5,6)
x+y
x*y
z <- x+y
z

d <- c(1:10)
d
sum(d)
sum(2*d)
length(d)
mean(d[1:5])
max(d)
min(d)
sort(d)
sort(d,decreasing = FALSE)
sort(d,decreasing = TRUE)
median(d)
sum(d)/length(d)
sort(TRUE,d)
#인수 순서보다 매개변수 유무 확인 철저히(식 성립 )
d>=5
sum(d>5) #5보다 큰 값의 개수 출력
sum(d[d>5]) #5보다 큰 값의 합계 출력

condi <- d>5&d<8
condi
d[condi]

#===========리스트==========
da <- c(90,85,70,84)
my.info <- list(name="bs",age=25,status=TRUE,score=da)
my.info
my.info[[1]]
my.info[[4]]
my.info[4]

bt <- c("A","B","B","O","AB","A") #혈액형
bt.new <- factor(bt)
bt
bt.net
bt.new
bt[5]
bt.new[5]

#팩터의 문자값을 숫자값으로 바꾸어서 출력
levels(bt.new)
as.integer(bt.new)
bt.new[7]
bt.new[7] <- "B"
bt.new
bt.new[8] <- "C"
bt.new

getwd()

