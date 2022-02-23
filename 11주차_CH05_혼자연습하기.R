#01
#(1)
edu <- infert[,"education"]
edu

#(2)
unique(edu)

#(3)
table(edu)

#(4)
ds <- table(edu)
barplot(ds)

#02
#(1)
gender <- c("F","F","F","M","M","F","F","F","M","M")

#(2)
table(gender)

#(3)
ds <- table(gender)
barplot(ds)

#(4)
pie(ds)

#03
#(1)
season <- c("여름","겨울","봄","가을","여름","가을","겨울","여름","여름","가을")

#(2)
table(season)

#(3)
ds <- table(season)
barplot(ds)

#(4)
pie(ds)

#04
#(1)
score <- c(90,85,73,80,85,65,78,50,68,96)
subjects <-  c("KOR","ENG","ATH","HIST","SOC","MUSIC","BIO","EARTH","PHY","ART")
names(score) <- subjects

#(2)
score

#(3)
mean(score)
median(score)

#(4)
sd(score)

#(5)
names(score[which.max(score)])

#(6)
boxplot(score)
boxplot(score)$out

#(7)
hist(score,main="학생 성적",col="purple")

#05
#(1)
mtcars
mean(mtcars[,"wt"])
median(mtcars[,"wt"])
mean(mtcars[,"wt"],trim=0.15)
sd(mtcars[,"wt"])

#(2)
summary(mtcars[,"wt"])

#(3)
table(mtcars[,"cyl"])

#(4)
ds <- table(mtcars[,"cyl"])
barplot(ds)

#(5)
hist(mtcars[,"wt"])

#(6)
boxplot(mtcars[,"wt"])
boxplot.stats(mtcars[,"wt"])

#(7)
boxplot(mtcars[,"disp"])
boxplot.stats(mtcars[,"disp"])

#(8)
boxplot(mpg~gear,data=mtcars)

#06
#(1)
head(trees)

#(2)
mean(trees[,"Girth"])
median(trees[,"Girth"])
mean(trees[,"Girth"],trim=0.15)
sd(trees[,"Girth"])

#(3)
hist(trees[,"Girth"])

#(4)
boxplot(trees[,"Girth"])

#(5)
mean(trees[,"Height"])
median(trees[,"Height"])
mean(trees[,"Height"],trim=0.15)
sd(trees[,"Height"])

#(6)
hist(trees[,"Height"])

#(7)
boxplot(trees[,"Height"])

#07
#(1)
head(Orange)

#(2)
mean(Orange[,"age"])
median(Orange[,"age"])
mean((Orange[,"age"]),trim=0.15)
sd(Orange[,"age"])

#(3)
hist(Orange[,"age"])

#(4)
boxplot(age~Tree,Orange)

#(5)
mean(Orange[-2,"circumference"])
median(Orange[-2,"circumference"])
mean(Orange[-2,"circumference"],trim=0.15)
sd(Orange[-2,"circumference"])

#(6)
hist(Orange[-2,"circumference"])

#(7)
boxplot(circumference~Tree,Orange)
