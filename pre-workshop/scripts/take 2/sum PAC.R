#create spreadsheet outside of R
#filter by 02,04,06 or 08
#the fun begins
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#
#sum PAC
#libraries
	library(sqldf)
#load file
	agg02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg02.csv")

#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,count(*) total from agg02
	group by PACID,Amount")
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("newagg02.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
###
#create spreadsheet outside of R
#filter by 02,04,06 or 08
#the fun begins
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#
#sum PAC
#libraries
	library(sqldf)
#load file
	agg04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg04.csv")

#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,count(*) total from agg04
	group by PACID,Amount")
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("newagg04.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#
###
#create spreadsheet outside of R
#filter by 02,04,06 or 08
#the fun begins
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#
#sum PAC
#libraries
	library(sqldf)
#load file
	agg06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg06.csv")

#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,count(*) total from agg06
	group by PACID,Amount")
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("newagg06.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#
###
#create spreadsheet outside of R
#filter by 02,04,06 or 08
#the fun begins
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#
#sum PAC
#libraries
	library(sqldf)
#load file
	agg08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg08.csv")

#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,count(*) total from agg08
	group by PACID,Amount")
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("newagg08.csv", open="a")
	write.table(both, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#
