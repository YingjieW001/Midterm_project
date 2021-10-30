ST<-read.csv(file="Strawberries.csv")
PE<-read.csv(file="Pesticides.csv")

cnames<-colnames(PE)[-1]
cnames<-c("Pesticide",cnames)
colnames(PE)<-cnames
ST1=ST[,c(2,6,18,19)]
colnames(ST1)=c("Year","State","Chemical type","Chemical")
ST_or<- ST1[grep(pattern = "ORGANIC STATUS",ST1[,3]),]
ST_pe<-ST1[grep(pattern = "CHEMICAL, INSECTICIDE",ST1[,3]),]
ST_to<- merge(ST_or,ST_pe,all = T)
