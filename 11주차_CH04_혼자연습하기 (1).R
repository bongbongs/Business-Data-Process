#01
#(1)
sum <- 0
num <- 0
for(i in 2:99) {
  if(i%%3==0)
    sum <-  sum + i
  num <- num + 1
}
sum
num

#(2)
for(i in 102:199){
  if(i%%3==0 & i%%4==0)
  print(i)
}

#(3)
for(i in 1:24){
  if(24%%i ==0)
    print(i)
}

#(4)
fac <- 1
for(i in 1:10){
  fac <- fac * i
}
fac

#02
for(i in 1:9){
  cat("9*",i,"=",9*i,"\n")
}

#03
i <- 1
while(i<10){
  cat("8*",i,"=",8*i,"\n")
  i <- i+1
}

#04
for(i in 1:100){
  if(i%%3==0)
    i <- "*"
}
print(i)

#05
isprime <-  function(x){
  i <- 2
  while(i<sqrt(x)){
    if(x%%i==0)
      return(FALSE)
    i <- i+1
  }
  return(TRUE)
}

for(i in 3:999){
  if(isprime(i)){
    cat(i,"")
  }
}

#06
num.fib <- c(0,1,0)
for(i in 1:39){
  if(i==1|i==2){
    cat(num.fib[i],"")
  }else{
    num.fib[(i-1)%%3+1] <- num.fib[(i-3)%%3+1]+num.fib[(i-2)%%3+1]
cat(num.fib[(i-1)%%3+1],"")  }
}

#07
#(1)
apply(iris[,1:4],1,sum)

#(2)
apply(iris[,1:4],2,max)

#08
mtcars
#(1)
apply(mtcars,2,sum)
#(2)
apply(mtcars,2,max)
#(3)
apply(mtcars,2,sd)

#11
weight <- c(69,50,55,71,89,64,59,70,71,80)
#(1)
which.max(weight)
#(2)
which.min(weight)
#(3)
which(weight<69&weight>61)
#(4)
weight.2 <- weight[which(weight<=60)]
weight.2

#12
#(1)
idx <- which.max(iris$Petal.Length)
iris.big <- iris[idx,]
iris.big

#(2)
idx <- which(iris$Petal.Width<0.4&iris$Petal.Width>0.3)
idx
iris.width <- iris[idx,]
iris.width

#or iris[which(iris$Petal.Width<0.4&iris$Petal.Width>0.3),]