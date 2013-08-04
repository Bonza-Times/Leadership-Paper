#load files
	bfin06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\fixed data\\cleanit\\bfin06.csv")
	bfin08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\fixed data\\cleanit\\bfin08.csv")
	lfin06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\fixed data\\cleanit\\lfin06.csv")
	lfin08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\fixed data\\cleanit\\lfin08.csv")
	match<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\missingMatch.csv")
#merge
	library(sqldf)

	b06<-sqldf("select * from bfin06 join match using (DistIDRunFor)")
	b08<-sqldf("select * from bfin08 join match using (DistIDRunFor)")
	l06<-sqldf("select * from lfin06 join match using (DistIDRunFor)")
	l08<-sqldf("select * from lfin08 join match using (DistIDRunFor)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\missing fix")
#writing table to csv
	out_file <- file("bus06.csv", open="a")
	write.table(b06, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#writing table to csv
	out_file <- file("bus08.csv", open="a")
	write.table(b08, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#writing table to csv
	out_file <- file("lab06.csv", open="a")
	write.table(l06, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#writing table to csv
	out_file <- file("lab08.csv", open="a")
	write.table(l08, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check