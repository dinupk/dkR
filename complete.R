complete<-function(directory,id=1:332){
   filelist<-list.files(directory)
  dFile <- as.data.frame(c())
  for(fileIndex in seq_along(filelist)){
    
    currRead<-read.csv(filelist[fileIndex],header=TRUE)
    id<-currRead[1]
    print(id)
  }
}

complete(getwd())