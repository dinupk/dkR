corr<-function(directory,threshold=0){
   outDF<-data.frame()
   currReadCor<-c()
   currReadCor<-as.numeric(currReadCor)
  
   filelist<-list.files(directory)

   for(fileIndex in seq_along(filelist)){
    fname<-paste0(directory,"/",filelist[fileIndex],".csv")
    currRead<-read.csv(fname,header=TRUE)
    currRead<-na.omit(currRead)
    if(dim(currRead)[1]>threshold){
     
      currReadCor<-append(currReadCor,cor(currRead$sulfate,currRead$nitrate) )
      
    }
    
  }
   
   currReadCor
}
getwd()
cr <- corr("specdata", 150)
head(cr)