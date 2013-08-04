#Run models
#load file
	cid06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\cid06.csv")
	cid08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\cid08.csv")

	lcid06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\lcid06.csv")
	lcid08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\lcid08.csv")

#check
CPool<-rbind(cid06,cid08)
LPool<-rbind(lcid06,lcid08)
names(CPool)
names(LPool)


attach(Pool)
#check
#Create variables
	Maj_leadership<-Chairman+Speaker+(HRUL*Majority)
	Min_leadership<-Ranking_Member
	Dem<-PolParty
	#Cmte<-HAPP, HWAY
	#Margin
	Freshman<-fr
	
#Model 1
	#AdjAmount = Maj_Leadership + Min_Leadership
#Model 2
	#AdjAmount = Majority + Dem
#Model 3
	#AdjAmount = Maj_Leadership + Min_Leadership + Dem + Majority + Cmte
			#+ Margin + Freshman 
#Model 1
m1<-lm(AdjAmount~Maj_leadership+Min_leadership)

#Model 2
m2<-lm(AdjAmount~Majority+Dem)

#Model 3
m3<-lm(AdjAmount~Maj_leadership+Min_leadership+Dem+Majority)

#Summary
summary(m1)
summary(m2)
summary(m3)
#check

Pool2<-cbind(Pool,Maj_leadership,Min_leadership,Dem, Freshman)
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv
	out_file <- file("Pool2.csv", open="a")
	write.table(Pool2, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

   

