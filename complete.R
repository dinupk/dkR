complete<-function(directory,id=1:332){
   filelist<-list.files(directory)
   outDF<-data.frame()
   for(fileIndex in seq_along(filelist)){
    
    currRead<-read.csv(filelist[fileIndex],header=TRUE)
    id<-currRead[1,"ID"]
    nob<-dim(currRead)[1]
    outDF<-rbind(outDF,c(id,nob))
  }
   names(outDF)<-c("ID","Obs")
   outDF
}
getwd()
DataFrame1<-complete(getwd())
DataFrame1