apply(iris[,1:4],1,mean) # - row(행)방향
apply(iris[,1:4],2,mean) # - col(열)방향

mapply(function, ...)
lapply(list, function)
sapply(list, function)
tapply(vector, index, function)

mapply(mean, iris[,1:4])

lapply(iris[,1:4],mean)

sapply(iris[,1:4],mean)

tapply(1:10, rep(1,10), sum)

str(iris)
tapply(iris$Sepal.Length, iris$Species, mean)

score <- c(76,84,69,50,95,60,82,71,88,84)
#69점 받은 학생 몇번째?
which(score==69)

#85점 이상인 학생들 몇 번째에 있나 ?
which(score>=85)

#최대값 위치?
max(score)
which.max(score)

min(score)
which.min(score)

#성적이 60점 이하인 값들을 61점으로 상향 조정

score
idx <- which(score<=60)
idx

score[idx] <- 61
score

#80점 이상인 학생들 몇 번째에 있나 ?
idx <- which(score>=80)
idx

score.high <- score[idx]
score.high

score.high1 <- subset(score,score>=80)
score.high1

#꽃잎의 길이(Petal.Length)가 5.0 이상인 값들의 인덱스, 인덱스에 해당하는 값만 추출하여 저장

idx <- which(iris$Petal.Length>5.0)
idx

iris.big <- iris[idx,]
iris.big

idx <- which(iris[,1:4]>5.0,arr.ind=T)
idx
