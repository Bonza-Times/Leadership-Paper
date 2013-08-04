#load files
	pac06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs06.csv")
	pac08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs08.csv")
	pacmatch<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\pre-workshop\\data\\take 2\\pacmatch.csv")
	
##Join pacmatch dummies with pacs

	library(sqldf)
#merge pacmatch, pac06:08
	p06<-sqldf("select * from pac06 join pacmatch using (PACID)")
	p08<-sqldf("select * from pac08 join pacmatch using (PACID)")

##Separate Business from Labor
	
#business
	bpac06<-sqldf("select * from p06 where business=1")
	bpac08<-sqldf("select * from p08 where business=1")
#labor
	lpac06<-sqldf("select * from p06 where labor=1")
	lpac08<-sqldf("select * from p08 where labor=1")

##Sum amount of contributions to incumbent

	b109<-sqldf("select Cycle,CID,Pamount,FECCandID,
			business,labor,
			sum(Pamount) as amount from bpac06 
			group by FECCandID")
	l109<-sqldf("select Cycle,CID,Pamount,FECCandID,
			business,labor,
			sum(Pamount) as amount from 
			lpac06 group by FECCandID")
	b110<-sqldf("select Cycle,CID,Pamount,FECCandID,
			business,labor,
			sum(Pamount) as amount from bpac08 
			group by FECCandID")
	l110<-sqldf("select Cycle,CID,Pamount,FECCandID,
			business,labor,
			sum(Pamount) as amount from lpac08
			group by FECCandID")


##Join with candidate files
#load files
	cand06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands06.csv")
	cand08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands08.csv")

#select specified columns
	c06<-sqldf("select Cycle,FECCandID,CID,FirstLastP,Party,
	DistIDRunFor from cand06 group by FECCandID") 

	c08<-sqldf("select Cycle,FECCandID,CID,FirstLastP,Party,
	DistIDRunFor from cand08 group by FECCandID") 
#join with bpac,lpac files
	bac06<-sqldf("select * from c06 join b109 using (FECCandID)")
	bac08<-sqldf("select * from c08 join b110 using (FECCandID)")

	lac06<-sqldf("select * from c06 join l109 using (FECCandID)")
	lac08<-sqldf("select * from c08 join l110 using (FECCandID)")


##merge with house109
#load file
	house109<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\droplist & final data\\house109.csv")

#join bac,lac with house109

	ba06<-sqldf("select * from bac06 join house109 using (CID)")
	ba08<-sqldf("select * from bac08 join house109 using (CID)")

	la06<-sqldf("select * from lac06 join house109 using (CID)")
	la08<-sqldf("select * from lac08 join house109 using (CID)")
	
#check

#write tables

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\abort abort\\test")
#writing table to csv
	out_file <- file("bac06.csv", open="a")
	write.table(ba06, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

#writing table to csv
	out_file <- file("bac08.csv", open="a")
	write.table(ba08, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

#writing table to csv
	out_file <- file("lac06.csv", open="a")
	write.table(la06, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

#writing table to csv
	out_file <- file("lac08.csv", open="a")
	write.table(la08, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check