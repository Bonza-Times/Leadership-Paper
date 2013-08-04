#Corporate merge
#load file
	final02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final02.csv")
 
	pacmatch <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\pacmatch.csv")

#library
library(sqldf)

#merge by CID
	m1<-sqldf("select * from final02 join pacmatch using (PACID)")

#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data")
#writing table to csv
	out_file <- file("FinalCor02.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check
#final 04
#load file
	final04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final04.csv")
 
	pacmatch <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\pacmatch.csv")

#library
library(sqldf)

#merge by CID
	m1<-sqldf("select * from final04 join pacmatch using (PACID)")

#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data")
#writing table to csv
	out_file <- file("FinalCor04.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check
#06
#load file
	final06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final06.csv")
 
	pacmatch <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\pacmatch.csv")

#library
library(sqldf)

#merge by CID
	m1<-sqldf("select * from final06 join pacmatch using (PACID)")

#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data")
#writing table to csv
	out_file <- file("FinalCor06.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check
#08
#load file
	final08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final08.csv")
 
	pacmatch <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\pacmatch.csv")

#library
library(sqldf)

#merge by CID
	m1<-sqldf("select * from final08 join pacmatch using (PACID)")

#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data")
#writing table to csv
	out_file <- file("FinalCor08.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check