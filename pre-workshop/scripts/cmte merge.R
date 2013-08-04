#create spreadsheet outside of R
#filter by 108th, 109th, 110th, 111th (02,04,06, and 08)
#considerably more fun
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#merge cmte & pac 02 
#match by CID somehow

#load file
	pac02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac02.csv")

	cmte02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte02.csv")
#merge by CID

m1<-merge(pac02,cmte02,by.x="CID",by.y="CID")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
out_file <- file("cmte_pac02.csv", open="a")
write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
col.names=NA, row.names=TRUE)
close(out_file)


#merge cmte & pac 04 
#match by CID somehow

#load file
	pac04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac04.csv")

	cmte04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte04.csv")
#merge by CID

m1<-merge(pac04,cmte04,by.x="CID",by.y="CID")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
out_file <- file("cmte_pac04.csv", open="a")
write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
col.names=NA, row.names=TRUE)
close(out_file)


#merge cmte & pac 06 
#match by CID somehow

#load file
	pac06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac06.csv")

	cmte06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte06.csv")
#merge by CID

m1<-merge(pac06,cmte06,by.x="CID",by.y="CID")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
out_file <- file("cmte_pac06.csv", open="a")
write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
col.names=NA, row.names=TRUE)
close(out_file)

#merge cmte & pac 08 
#match by CID somehow

#load file
	pac08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\pac08.csv")

	cmte08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte08.csv")
#merge by CID

m1<-merge(pac08,cmte08,by.x="CID",by.y="CID")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
out_file <- file("cmte_pac08.csv", open="a")
write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
col.names=NA, row.names=TRUE)
close(out_file)


