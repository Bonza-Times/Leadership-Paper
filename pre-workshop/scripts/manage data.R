#create spreadsheet outside of R
#filter by 02,04,06 or 08
#the fun begins
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#merge cmte & pac 02 
#match by CID somehow
#libraries
	library(sqldf)
#load file
	pac02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac02.csv")

#sum amount by pac02 to cid
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode, 
	count(*) total from pac02 
	group by RecipID,Amount")

#export table
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("agg02.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


#load file: pac04
	pac04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac04.csv")
#sum amount by pac04 to cid
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode, 
	count(*) total from pac04 
	group by RecipID,Amount")

#export table
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("agg04.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


#load file: pac06
	pac06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac06.csv")
#sum amount by pac06 to cid
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode, 
	count(*) total from pac06 
	group by RecipID,Amount")

#export table
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("agg06.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


#load file: pac08
	pac08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac08.csv")
#sum amount by pac08 to cid
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode, 
	count(*) total from pac08 
	group by RecipID,Amount")

#export table
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("agg08.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check check
