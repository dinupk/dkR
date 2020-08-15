pollutantmean<-function(directory,pollutant,id=1:332){
 id<-sprintf("%03d",id)
 PollutanttData<-list()
 for ( pollutIndex in seq_along(id)){
      CurrRead<-read.csv(file=paste0(directory,"/",id[pollutIndex],".csv"),header = TRUE)
      PollutantData=rbind(PollutantData,CurrRead)

            }
  print(unique(PollutantData$ID))
  mean(get(pollutant,PollutantData),na.rm=TRUE)
}

pollutid<-c(2,40,124,325,155)
data<-pollutantmean(getwd(),"sulfate",pollutid)
data