#직무유형 - A, 보너스 100만원
#직무유형 - B, 보너스 200만원

job.type <- "A"
if(job.type == "B"){
  bonus <- 200
} else{
  bonus <- 100
}
print(bonus)

#else 생략
job.type <- "B"
bonus <- 200
if(job.type=="A"){
  bonus = 100
}
print(bonus)

score <- 85

if(score>90){
  grade <- "A"
} else if(score>80){
  grade <- "B"
} else if(score>70){
  grade <- "C"
} else if(score>60){
  grade <- "D"
} else {
  grade <- "F"
}

print(score)
print(grade)

a <- 10
b <- 20
if(a>5&b>5) {
  print(a+b)
}

if(a>5|b>30) {
  print(a*b)
}

a
b

if(a>b){
  c <- a
} else {
  c <- b
}
print(c)

c <- ifelse(a>b,a,b)
print(c)

# * 5th
for(i in 1:5){
  print('*')
}

# 6~10까지 나열
for(i in 6:10){
  print(i)
}

#구구단 2단 출력하는 작업
#2*1 = 2
#2*2 = 4
#.....
#2*9 = 18

for(i in 1:9){
  cat("2*",i,"=",2*i,"\n")
}

#sep 활용 가능

for(i in 1:9){
  cat("2*",i,"=",sep="",2*i,"\n")
}

#1~20사이의 숫자 중 짝수만 골라서
for(i in 1:20){
  if(i%%2==0){
    print(i)
  }
}

#for 이용하여 1~100 사이에 있는 숫자의 합계
#정의를 한 변수 1+2+3+...+100
#계산에 변수를 사용하려면 반드시 변수를 먼저 정의를 한 후에 사용!

sum <- 0
for(i in 1:100){
  sum <- sum + i
}
print(sum)

#iris 데이터 셋에서 꽃잎의 길이(Petal.Length)가 만약 1.6 이하이면 "L", 5.1 이상이면 "H" 나머지는 "M"로 분류하는 레이블 작성.

norow <- nrow(iris)
mylabel <- c()

for(i in 1:norow){
  if(iris$Petal.Length[i]<=1.6){
    mylabel[i] <- "L"
  } else if(iris$Petal.Length[i]>=5.1){
    mylabel[i] <- "H"
  } else {
    mylabel[i] <- "M"
  }
}
print(mylabel)

newds <- data.frame(iris$Petal.Length, mylabel)
head(newds)

#1~100까지 숫자의 합계 계산 작업(while)
sum <- 0
i <- 1
while(i<=100){
  sum <- sum + i
  i <- i+1
}
print(sum)  

#i값 정의 안했을 때, 3사분면 오른쪽 위 빨강버튼이 나타나며 무한으로 계산, 버튼을 눌러서 멈춰 컴퓨터 다운되는걸 막아야함!
sum <- 0
i <- 1
while(i<=100){
  sum <- sum + i
}
print(sum)

#범위가 1~10이지만 1~5까지 더하는 값 구하기

sum <- 0
for(i in 1:10){
  sum <-  sum + i
  if(i>=5) break
}
print(sum)

#1~10까지 수 중 홀수값만 더하여라
sum <- 0
for(i in 1:10){
  if(i%%2==0) next
     sum <- sum + i
}
sum
