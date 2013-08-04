#final pool 
#load file
	final02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final02.csv")

	final04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final04.csv")

	final06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final06.csv")

	final08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final08.csv")
#merge by CID
#libraries
	library(sqldf)
#merge
#merge by CID
m1<-sqldf("select * from fix08 join maj08 using (CID)")
#merge by CID
m2<-sqldf("select * from fix08 join maj08 using (CID)")
#merge by CID
m3<-sqldf("select * from fix08 join maj08 using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data")
#writing table to csv
	out_file <- file("pool.csv", open="a")
	write.table(Total, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
