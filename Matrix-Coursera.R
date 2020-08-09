#Matrices
m1<-matrix(1:6,nrow=2,ncol=3,byrow=TRUE)
m1
attributes(m1)
      
v1<-c(1:10)
v1
dim(v1)<-c(2,5)
v1
#Factors Github
fact1<-factor(c("Male","Female","Male","Male","Female"))
fact1
tabfact1<-table(fact1)
tabfact1["Male"]
