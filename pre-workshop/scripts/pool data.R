#Pool data
#load file
	Cor02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor02.csv")
 
	Cor04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor04.csv")

	Cor06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor06.csv")
 
	Cor08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor08.csv")
#Pool
	Pool<-rbind(Cor06,Cor08)
#Check
	attach(Pool)
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv
	out_file <- file("pool.csv", open="a")
	write.table(Pool, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#OLS Model
#Create variables
	
#Model
	m1<-lm(AdjAmount~SeniorP+SeniorM+Majority+PolParty)
	summary(m1)
#check