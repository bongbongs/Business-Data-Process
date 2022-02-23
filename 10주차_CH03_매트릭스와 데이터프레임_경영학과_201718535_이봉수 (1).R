#1~20 matrix
matrix(1:20,nrow = 4, ncol = 5)
z <- matrix(1:20,nrow = 4, ncol = 5)
z <- matrix(1:20,nrow = 4, ncol = 5, byrow = T)
z

x <- 1:4
y <- 5:8
z
m1 <- cbind(x,y)
m1
m2 <- rbind(x,y)
m2
m3 <- rbind(m2,x)
m3
m4 <- cbind(z,x)
m4

z
z[2,2]
z[,4]

#2 coluum 값?
z[2,]

#1행의 값 중 1,2,4 열에 있는 값?
z[1,c(1,2,4)]

#1,2 행에 있는 모든 값?
z[1:2,]
z

score <- matrix(c(90,69,70,78,
                  85,96,49,95,
                  90,80,70,60),
                nrow=4,ncol=3)
score
rownames(score) <- c("john","tom","mark","jane")
colnames(score) <- c("english","math","science")
score

score["john","math"]

#모든 학생의 영어 성적?
score[,"english"]

#열의 이름 중 두번째 값?
colnames(score)[2]

#도시의 순위를 나타내는 정보를 포함한 데이터 프레임
city <- c("seoul","tokyo","washington")
rank <- c(1,3,2)
z <- matrix(city,rank)
z
city.info <- data.frame(city,rank)
city.info
s
iris
#1,2 col
iris[,c(1:2)]

#1~5행의 모든 데이터 값
iris[c(1:5),]
iris[1:5,]

#1~5행의 데이터 중에서 1,3열의 데이터
iris[1:5,c(1,3)]
