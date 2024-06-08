install.packages('randomForest')
data("iris")
View(iris)
library(randomForest)
set.seed(71)
Y <- iris$Species
X <- iris[,c(1,2,3,4)]

set.seed(1)
sample(x =c(21,22,23,24,25,26,27),size=3,replace= TRUE) 

rf_mod_01<-randomForest(x = X,y=Y)

rf_mod_02<-randomForest(x = X,y=Y, proximity= TRUE, importance = TRUE)


MDSplot(rf=rf_mod_02, fac = Y, cex=3, pch=0)

rf_mod_02$importance

head(iris)

boxplot(Petal.Width~Species, data=iris)
boxplot(Petal.Length~Species, data=iris)
boxplot(Sepal.Length~Species, data=iris)
boxplot(Sepal.Width~Species, data=iris)

png(filename="Boxplot1.png")  
cols <- c('#15eb2e','#FF9EAA','#49e3de')
par(mfrow=c(2,2))
boxplot(Petal.Width~Species, data=iris,col=cols)
boxplot(Petal.Length~Species, data=iris,col=cols)
boxplot(Sepal.Length~Species, data=iris,col=cols)
boxplot(Sepal.Width~Species, data=iris,col=cols)
dev.off()

install.packages('corrplot')
iris&Sepal.Length

x_cor <-cor(X)
library(corrplot)
par(mfrow=c(1,1))
corrplot(x_cor)

tb_y <- table(Y)
barplot(tb_y,col=cols)

png(filename="Barplot1.png") 
tb_y <- table(sample(x=Y,size=500, replace=TRUE))
barplot(tb_y,col=cols)
dev.off()
