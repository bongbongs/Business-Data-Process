#01
score <- matrix(c(10,40,60,20,21,60,70,30),4,2) #(1)
score
colnames(score) <- c("male","female") #(2)
score
score[2,] #(3)
score[,"female"] #(4)
score[3,2] #(5)

#02
st <- data.frame(state.x77) #(1)
st #(2)
colnames(st) #(3)
rownames(st) #(4)
dim(st) #(5)
str(st) #(6)
rowSums(st) #(7)
rowMeans(st)
colSums(st) #(8)
colMeans(st)
st["Florida",] #(9)
st[,"Income"] #(10)
st["Texas","Area"] #(11)
st["Ohio",c("Population","Income")] #(12)
subset(st,Population>5000) #(13)
subset(st[c("Population","Income","Area")],Income>4500) #(14)
nrow(subset(st,Income>4500)) #(15)
subset(st,Area>100000&Frost>120) #(16)
subset(st,Population<2000&Murder<12) #(17)
mean(subset(st,Illiteracy>=2.0)[,"Income"]) #(18)
mean(subset(st,Illiteracy<2.0)[,"Income"])-mean(subset(st,Illiteracy>=2.0)[,"Income"])  #(19)
rownames(subset(st,Life.Exp == max(st[,"Life.Exp"]))) #(20)
rownames(subset(st,Income>st["Pennsylvania","Income"])) #(21)
 
#03
mtcars #(1)
dim(mtcars) #(2)    
class(mtcars[,1:ncol(mtcars)]) #(3)
#(4)
#[, 1]	mpg	Miles/(US) gallon
#[, 2]	cyl	Number of cylinders
#[, 3]	disp	Displacement (cu.in.)
#[, 4]	hp	Gross horsepower
#[, 5]	drat	Rear axle ratio
#[, 6]	wt	Weight (1000 lbs)
#[, 7]	qsec	1/4 mile time
#[, 8]	vs	Engine (0 = V-shaped, 1 = #straight)
#[, 9]	am	Transmission (0 = automatic, 1 = manual)
#[,10]	gear	Number of forward gears
#[,11]	carb	Number of carburetors
rownames(subset(mtcars,mpg == max(mtcars[,"mpg"]))) #(5)
rownames(subset(mtcars,gear==4 & mpg == min(mtcars[,"mpg"]))) #(6)
mtcars["Honda Civic",c("mpg","gear")] #(7)
rownames(subset(mtcars, mpg > mtcars["Pontiac Firebird","mpg"])) #(8)
mean(mtcars[,"mpg"]) #(9)
mtcars[,"gear"] #(10)

#04
class(airquality) #(1)
head(airquality) #(2)
subset(airquality, Temp == max(airquality[,"Temp"]))[,c("Month","Day")] #(3)
subset(airquality, Month == 6 & Wind == max(airquality[,"Wind"]))[,"Wind"] #(4)
mean(subset(airquality,Month == 7)[,"Temp"]) #(5)
mean(subset(airquality,Month == 5 & Ozone !="NA")[,"Ozone"]) #(6)
nrow(subset(airquality,Ozone > 100)) #(7)
     
#05
str(swiss) #(1)
rownames(subset(swiss, Agriculture == max(swiss[,"Agriculture"]))) #(2)
a <- swiss[order(swiss$Agriculture,decreasing=T),] #(3) 교수님 해답
a["Agriculture"]
rownames(subset(swiss,Agriculture == sort(swiss[,"Agriculture"], decreasing = T))) #(3)

subset(swiss,Catholic>=80)[,"Agriculture"] #(4)
subset(swiss,Examination<20&Agriculture<50)[,c("Examination","Agriculture")] #(5)

#06
rich_state <- subset(data.frame(state.x77),Income>=5000)[,c("Income","Population","Area")] #(1)
rich_state
write.csv(rich_state,"rich_state.csv")
ds <- rich_state #(2)
ds
