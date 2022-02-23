2+3
(3+6)*8
2^3 #2의 세제곱
#은 주석
8%%3 #%%는 나머지 구할때
log(10)
LOG(10)
max(1,3,5)

a <- 10
b <- 20 #alt + -
a+b

c <- a+b
c
print(c)

a <- 125
sqrt(-3)
a <- "A"
a+b

x <- c(1,2,3)
y <- c("a","b","c")
z <- c(TRUE,TRUE,FALSE,TRUE)
w <- c(1,2,3,"a","b","c")

# :
v1 <- c(50:90)
v1
v2 <- c(1,3,5,50:90)
v2

v3 <- seq(1,101,3)
v3

v5 <- rep(1,times=5)
v5

#1에서 5까지 3번 반복하는 벡터 생성
v6 <- rep(1:5,times=3)
v6

#1,5,9 3번 반복
v7 <- rep(c(1,5,9),times=3)
v7

score <- c(70,85,90)
score
names(score) <- c("john","tom","jane")
score

d <- c(1,4,3,7,8)
d[1]
d[5]
d[8]

#: , -

d[1:3]
d[c(1,3,5)]

#홀수 번째 값 출력
d[seq(1,5,2)]
d[-2] # 2번째값 제외

#3~5번째 값을 제외하고 출력
d[-c(3:5)]

#한국, 일본, 네팔의 GNP 2090,1900,960
#GNP 벡터를 생성하고, GNP의 이름을 부여

gnp <- c(2090,1900,960)
names(gnp) <- c("korea","japan","nepal")
gnp

gnp["korea"]
gnp[c("korea","nepal")]

v1

gnp[2] <- 1950
gnp

v1
#v1의 1,5번째 값을 각각 10,20으로 변경

v1[c(1,5)] <- c(10,20)
v1

d
2*d
d-5
3*d+4

