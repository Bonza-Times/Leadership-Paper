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
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("Corp02.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check
#Jacobson merge
#library
library(sqldf)
#load file
	jac02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\jac02.csv")

	maj02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\maj02.csv")

#merge by CID
m1<-sqldf("select * from jac02 join maj02 using (CID)")

#check






