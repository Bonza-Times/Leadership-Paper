#load files 
	pac06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs06.csv")
	pac08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs08.csv")
	cand06<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands06.csv")
	cand08<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\Candidate\\cands08.csv")


##join pac to cand using cand06

	library(sqldf)
	c109<-sqldf("select * from pac06 join cand06 using (FECCandID)")
	c110<-sqldf("select * from pac08 join cand08 using (FECCandID)")

##
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\abort abort")
#writing table to csv
	out_file <- file("c109.csv", open="a")
	write.table(c109, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

#writing table to csv
	out_file <- file("c110.csv", open="a")
	write.table(c110, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check

#group by candidate

	c109<-sqldf("select * from pac06 join cand06 using (FECCandID)")
	c110<-sqldf("select * from pac08 join cand08 using (FECCandID)")
	

####This is where I run into problems############
##split c109 by business PACs

#load files
	pacmatch<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\pre-workshop\\data\\take 2\\pacmatch.csv")

#check

library(sqldf)

#join c109 & c110 to match

	m109<-sqldf("select * from c109 join pacmatch using (PACID)")
	m110<-sqldf("select * from c110 join pacmatch using (PACID)")

#split by business PACs
	bpac06<-sqldf("select * from m109 where business=1 group by FECCandID")
	bpac08<-sqldf("select * from m110 where business=1 group by FECCandID")

#split by labor PACs
	lpac06<-sqldf("select * from m109 where labor=1 group by FECCandID")
	lpac08<-sqldf("select * from m110 where labor=1 group by FECCandID")

##aggregate by House candidate

#separate out House Candidates

	bh06<-sqldf("select * from bpac06 where FECCandID like '%H' group by FECCandID")
	bh08
	
	lh06
	lh08

#separate out columns of interest

	

	