#load file

	final02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final02.csv")
	final04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final04.csv")
	final06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final06.csv")
	final08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final08.csv")

#load file

	cid02<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\cid02.csv")
	cid04<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\cid04.csv")
	cid06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\cid06.csv")
	cid08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\cid08.csv")

	lcid02<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\lcid02.csv")
	lcid04<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\lcid04.csv")
	lcid06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\lcid06.csv")
	lcid08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final\\lcid08.csv")

#check

#pull incumbent column

#library

	library(sqldf)

#pull column

	a<-sqldf("select inc,CID from final02 group by CID")

#merge by CID

	m1<-sqldf("select * from a join cid02 using (CID)")
	m2<-sqldf("select * from a join lcid02 using (CID)")

#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")

#writing table to csv

#write table m1

	out_file <- file("C02.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#write table m2

	out_file <- file("L02.csv", open="a")
	write.table(m2, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#check

#pull column

	a<-sqldf("select inc,CID from final04 group by CID")

#merge by CID

	m1<-sqldf("select * from a join cid04 using (CID)")
	m2<-sqldf("select * from a join lcid04 using (CID)")

#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")

#writing table to csv

#write table m1

	out_file <- file("C04.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#write table m2

	out_file <- file("L04.csv", open="a")
	write.table(m2, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#pull column

	a<-sqldf("select inc,CID from final06 group by CID")

#merge by CID

	m1<-sqldf("select * from a join cid06 using (CID)")
	m2<-sqldf("select * from a join lcid06 using (CID)")

#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv

#write table m1

	out_file <- file("C06.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#write table m2

	out_file <- file("L06.csv", open="a")
	write.table(m2, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#pull column

	a<-sqldf("select inc,CID from final08 group by CID")

#merge by CID

	m1<-sqldf("select * from a join cid08 using (CID)")
	m2<-sqldf("select * from a join lcid08 using (CID)")

#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv

#write table m1

	out_file <- file("C08.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#write table m2

	out_file <- file("L08.csv", open="a")
	write.table(m2, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
	
