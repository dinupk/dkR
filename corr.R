corr<-function(directory,threshold=0){
   outDF<-data.frame()
   currReadCor<-c()
   currReadCor<-as.numeric(currReadCor)
  
   filelist<-list.files(directory)
   id<-sprintf("%03d",id)
   for(fileIndex in seq_along(id)){
    fname<-paste0(directory,"/",id[fileIndex],".csv")
    currRead<-read.csv(fname,header=TRUE)
    currRead<-na.omit(currRead)
    if(dim(currRead)[1]>threshold){
     
      currReadCor<-append(currReadCor,cor(currRead$sulfate,currRead$nitrate) )
      
    }
    
  }
   
   currReadCor
}
getwd()
cor(getwd(),400)