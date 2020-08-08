library(corrplot)


winequality <- read.csv("d/winequality-red.csv",header=T,sep=";")
#winequality <- read.csv("D:/data/winequality/winequality-red.csv",header=T)


winequality
#typeof(winequality)
summary(winequality)
winecorrel<-cor(winequality)
corrplot(winecorrel, method="ellipse")

wineLR<-lm(winequality$quality~winequality$alcohol + winequality$citric.acid)
print(summary(wineLR))