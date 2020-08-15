pollutantmean<-function(directory,pollutant,id=1:332){
 print(directory)
 id<-sprintf("%03d",id)
 PollutantData=list()
 for ( pollutIndex in seq_along(id)){
  
 #     CurrRead <-read.csv(file=paste0(directory,"/",id[pollutIndex],".csv"),header = TRUE)
      CurrRead<-read.csv(file=paste0(directory,"/",id[pollutIndex],".csv"),header = TRUE)
      PollutantData<-append(PollutantData,CurrRead)
            }
  
  mean(get(pollutant,PollutantData),na.rm=TRUE)
  
 }

pollutid<-c(2,40,124,325,155)
data<-pollutantmean(getwd(),"sulfate",pollutid)
data