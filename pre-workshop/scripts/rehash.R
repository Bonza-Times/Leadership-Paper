#Pool data
#load file
	pool<- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\rehash\\pool.csv")

#Check
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\rehash")
#writing table to csv
	out_file <- file("pool1.csv", open="a")
	write.table(pool, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#OLS Model
attach(pool)
#check
#Create variables
	Maj_leadership<-Chairman+Speaker+(HRUL*Majority)
	Min_leadership<-Ranking_Member+(HRUL*Minority)
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
m3<-lm(AdjAmount~Maj_leadership+Min_leadership+Dem+Freshman)

#Summary
summary(m1)
summary(m2)
summary(m3)
#check
