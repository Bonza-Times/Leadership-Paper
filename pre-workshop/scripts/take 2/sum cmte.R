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
	agg02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\newagg02.csv")

	cmte02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte02.csv")
#merge by CID
m1<-sqldf("select * from agg02 join cmte02 using (CID)")

m2<-sqldf("select * from cmte02 group by CQCode")