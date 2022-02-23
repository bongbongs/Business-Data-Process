# 특성 - 범주형, 연속형
# 개수 - 단일변수자료, 다중변수자료

#범주형 - (질적자료)
#1,2 - 1+2=3
#숫자 대소 x 산술연산 x

#연속형
#대소 o, 산술연산 o

#벡터
#매트릭스와 데이터프레임

#=======단일변수 범주형 자료 ========
#막대그래프, 원

favorite <- c("WINTER","SUMMER","SPRING","SUMMER","SUMMER","FALL","FALL","SUMMER","SPRING","SPRING")
favorite

#도수분포표 table() - 가나다순
table(favorite)
length(favorite)

#데이터 순서 정렬
table(favorite)
ds <- table(favorite)
ds

ds.new <- ds[c(2,3,4,1)]
ds.new


#비율 출력
table(favorite)/length(favorite)

#막대그래프 barplot()
ds <-  table(favorite)
ds
barplot(ds, main="favorite season")

#원그래프 pie()
pie(ds)

#숫자로 표현된 범주형 자료
#1- 초록, 2- 빨강, 3- 파랑

favorite.color <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
favorite.color
table(favorite.color)
ds <- table(favorite.color)

barplot(ds,main="favorite color")
colors <- c("green","red","blue")
names(ds) <- colors
ds
barplot(ds,main="favorite color",col=colors)
pie(ds,main="favorite color",col=colors)

#단일변수 연속형 자료
weight <- c(60,62,64,65,68,69)
weight.heavy <- c(weight,120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

#절사평균(trim)
#상하위 20% 제외

mean(weight,trim = 0.2)
mean(weight.heavy, trim=0.2)

#사분위수
quantile(weight.heavy)
quantile(weight.heavy, (0:10)/10)

summary(weight.heavy)

#산포
var(weihgt.heavy)
sd(weight.heavy)
range(weight.heavy)
diff(range(weight.heavy))

#히스토그램 hist()
cars
str(cars)

dist <- cars[,2]
dist
barplot(dist)
hist(dist, main="Histogram for braking distance",
     xlab="braking distance", 
     ylab ="frequency number",
     border="red",
     col="blue",
     las=3,
     breaks=6)

#======상자그림======
#사분위수를 시각화 boxplot
summary(dist)
boxplot(dist, main = "distance")
boxplot.stats(dist)

#iris, 꽃잎의 길이를 품종별로 나눠 상자 그림 그리기
str(iris)
boxplot(Petal.Length~Species, data=iris, main="Petal.Length~Species")

str(mtcars)
par(mfrow=c(1,3))
barplot(table(mtcars$carb),
        col="green")
barplot(table(mtcars$cyl),
        col="red")
barplot(table(mtcars$gear),
        col="blue")

#가상화면 분할 해제
par(mfrow=c(1,1))
barplot(table(mtcars$gear),
        col="blue")
