#load files
	J109<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\fixed data\\cleanit\\J109.csv")
	J110<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\fixed data\\cleanit\\J110.csv")
	match<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\missingMatch.csv")
#merge
	library(sqldf)

	k109<-sqldf("select * from J109 join match using (DistIDRunFor)")
	k110<-sqldf("select * from J110 join match using (DistIDRunFor)")


#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\missing fix")
#writing table to csv
	out_file <- file("k109.csv", open="a")
	write.table(k109, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#writing table to csv
	out_file <- file("k110.csv", open="a")
	write.table(k110, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
