#=====명령문 또는 함수=====
dim(iris)
nrow(iris)
ncol(iris)
colnames(iris)
head(iris,10)
tail(iris)
tail(iris,9)

#추가적 내용 확인 함수
str(iris)
iris[,5]
unique(iris[,5])
table(iris[,"Species"]) #도수분포표

#1. 행별, 열별 합계와 평균 계산
str(iris)
#열별 합계,평균
colSums(iris[,-5])
colMeans(iris[,-5])

#행별 합계, 평균
rowSums(iris[,-5])
rowMeans(iris[,-5])

#2. 행과 열의 방향 전환
t()

z <- matrix(1:20,nrow=4,ncol=5)
z

z2 <- matrix(1:20,nrow=4,ncol=5,byrow=T)
z2

t(z)

#3.특정한 조건에 따른 값을 추출
#setosa 품종만 추출
subset(iris,Species == "setosa")
ir.1 <- subset(iris,Species == "setosa")
ir.1

#Sepal.Length가 5보다 크고, Sepal.Width가 4보다 큰 행들을 추출
ir.2 <- subset(iris,Sepal.Length>5.0&Sepal.Width>4.0)
ir.2

#ir.2에서 2,4열의 값만 추출하기
ir.2[,c(2,4)]




#4.매트릭스 또는 데이터 프레임 산술연산
a <- matrix(1:20,4,5)
b <- matrix(21:40,4,5)
a
b

b-5
a*2

b-a
b/a
a*b

#5.자료구조 확인
        #class()

class(iris)
state.x77
str(state.x77)
class(state.x77)
is.matrix(iris)
is.data.frame(iris)
is.data.frame(state.x77)

#자료구조 변환방법

#매트릭스 -> 데이터프레임
class(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)

#데이터프레임 -> 매트릭스
#5열을 제외한 1~4열까지 변환
class(iris)
iris.m <- as.matrix(iris[,1:4])
class(iris.m)

#데이터 프레임의 열 추출
iris[,"Species"]
iris[,5]
iris["Species"]
iris[5]
iris$Species #dataframe

#작업 폴더 지정
#setwd("C:\Users\이재원\Desktop...)

air <- read.csv("airquality.csv",header=T)
air
head(air)
class(air)

iris
my.iris <- subset(iris,Species=="setosa")
write.csv(my.iris,"my_iris.csv",row.names=F)