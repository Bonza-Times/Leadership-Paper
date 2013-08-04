#Run models
#load file

	c06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\C06.csv")
	c08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\C08.csv")

	l06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\L06.csv")
	l08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\L08.csv")

#check
#Create dataset
	cdata<-rbind(c06,c08)
	ldata<-rbind(l06,l08)
	
#Variables & Model

	#AdjAmount=Majority*Party Leader + Majority*Cmte Leader + Speaker + Rules +
		#Party Leader + Cmte Leader

	#Party Leader: Majority Leader + Minority Leader + Min Whip + Dem
	#Speaker: Speaker
	#Rules: HRUL
	#Cmte Leader: Chairman + Ranking Member 

#Generate variables

	attach(cdata)	
	party_leader<-(Maj_leader+Min_leader+Min_Whip)
	Rules<-HRUL
	Cmte_leader<-(Chairman + Ranking_Member)
	Dem<-Party

#attach new variables to dataset

	Cdata<-cbind(cdata,party_leader,Rules,Cmte_leader,Dem)
	detach(cdata)

#Generate variables

	attach(ldata)	
	party_leader<-Maj_leader+Min_leader+Min_Whip
	Rules<-HRUL
	Cmte_leader<-Chairman + Ranking_Member
	Dem<-Party	

#attach new variables to dataset

	Ldata<-cbind(ldata,party_leader,Rules,Cmte_leader,Dem)
	detach(ldata)

#export data
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv
	out_file <- file("cdata.csv", open="a")
	write.table(Cdata, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#writing table to csv
	out_file <- file("ldata.csv", open="a")
	write.table(Ldata, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

#load file
	cdata<-("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\cdata.csv")
#Model 1

	c<-lm(AdjAmount~Majority*party_leader+Majority*Cmte_leader+Speaker+Rules+
		party_leader+Cmte_leader+Dem)
#load file
	ldata<-("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\ldata.csv")

#Model 1

	l<-lm(AdjAmount~Majority*party_leader+Majority*Cmte_leader+Speaker+Rules+
		party_leader+Cmte_leader+Dem)

	summary(c)
	summary(l)

#check