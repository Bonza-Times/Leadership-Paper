#create spreadsheet outside of R
#filter by 02,04,06 or 08
#the fun begins
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
###############################################################################

#merge cmte & pac 02 
#match by CID somehow
#libraries
	library(sqldf)
#load file
	agg02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg02.csv")

	cmte02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte02.csv")
#merge by CID
m1<-sqldf("select * from agg02 join cmte02 using (CID)")
#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,CQCode,Title,Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,No_Cmte_Assign
	Vice_Chairman, 
	count(*) total from m1 
	group by CID,Amount")


#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("cmte_pac02.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

###############################################################################


#merge cmte & pac 04 
#match by CID somehow
#libraries
	library(sqldf)
#load file
	agg04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg04.csv")

	cmte04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte04.csv")
#merge by CID
m1<-sqldf("select * from agg04 join cmte04 using (CID)")
#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,CQCode,Title,Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,No_Cmte_Assign
	Vice_Chairman, 
	count(*) total from m1 
	group by CID,Amount")


#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("cmte_pac04.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


###############################################################################


#merge cmte & pac 06 
#match by CID somehow
#libraries
	library(sqldf)
#load file
	agg06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg06.csv")

	cmte06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte06.csv")
#merge by CID
m1<-sqldf("select * from agg06 join cmte06 using (CID)")
#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,CQCode,Title,Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,No_Cmte_Assign
	Vice_Chairman, 
	count(*) total from m1 
	group by CID,Amount")


#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("cmte_pac06.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


##############################################################################

#merge cmte & pac 08 
#match by CID somehow
#libraries
	library(sqldf)
#load file
	agg08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\agg08.csv")

	cmte08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte08.csv")
#merge by CID
m1<-sqldf("select * from agg08 join cmte08 using (CID)")
#aggregate by PACID
	both<-sqldf("select PACID, RecipID, CID,Amount,Cycle,PACShort,RealCode,
	total,CQCode,Title,Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,No_Cmte_Assign
	Vice_Chairman, 
	count(*) total from m1 
	group by CID,Amount")


#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("cmte_pac08.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


