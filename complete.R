complete<-function(directory,id=1:332){
   outDF<-data.frame()
  
   filelist<-list.files(directory)
   id<-sprintf("%03d",id)
   print(id)
   for(fileIndex in seq_along(id)){
    print(fileIndex) 
    print(id[fileIndex])
    fname<-paste0(directory,"/",id[fileIndex],".csv")
    print(fname)
    currRead<-read.csv(fname,header=TRUE)
    currRead<-na.omit(currRead)
    Idtag<-currRead[1,"ID"]
    nob<-dim(currRead)[1]
    outDF<-rbind(outDF,c(Idtag,nob))
  }
   names(outDF)<-c("ID","Obs")
   outDF
}
getwd()
DataFrame1<-complete(getwd(), 30:25)
DataFrame1