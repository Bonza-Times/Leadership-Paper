#merging possible controls and majority party status
#use data from corporate preference piece
#library
	library(foreign)
	library(sqldf)
#pull file
	j<-read.spss("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\Final Data.sav")
#reduce file
	names(j)
#reduction
	attach(j)
	x<-cbind(Cycle,CID,Party,state,District,
	inc,dv,dvp,fr,redist,dpres)
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
	out_file <- file("jclean.csv", open="a")
	write.table(x, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


#merging jac02:08 with fix 02:08
#merge fix02
#libraries
	library(sqldf)
#load file
	jac02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\jac02.csv")

	fix02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\fix02.csv")
#merge by CID
m1<-sqldf("select * from fix02 join jac02 using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("final02.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check
#merge fix04
#libraries
	library(sqldf)
#load file
	jac04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\jac04.csv")

	fix04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\fix04.csv")
#merge by CID
m1<-sqldf("select * from fix04 join jac04 using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("final04.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#merge fix06
#libraries
	library(sqldf)
#load file
	jac06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\jac06.csv")

	fix06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\fix06.csv")
#merge by CID
m1<-sqldf("select * from fix06 join jac06 using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("final06.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#merge fix08
#libraries
	library(sqldf)
#load file
	jac08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\jac08.csv")

	fix08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\fix08.csv")
#merge by CID
m1<-sqldf("select * from fix08 join jac08 using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("final08.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
