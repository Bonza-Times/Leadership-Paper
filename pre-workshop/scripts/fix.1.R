#merging pac files with cmte files, duplicates removed by using a
#remove duplicates column in excel then matching to that column in R
#this is the last step before merging with Jacobson

#merge new agg02
#load files
#load file
	newagg02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\newagg02.csv")

	fcmte02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\cmte02.csv")
#library
library(sqldf)
#sum to fixed column
both<-sqldf("select cid, Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,
	HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
	HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
	HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY, count (*) total from fcmte02
	group by cid")
#merge fcmte02 & newagg02
#merge by CID
m1<-sqldf("select * from newagg02 join both using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("fix02.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#merge new agg04
#load file
	newagg04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\newagg04.csv")

	fcmte04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\cmte04.csv")
#library
library(sqldf)
#sum to fixed column
both<-sqldf("select cid, Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,
	HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
	HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
	HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY, count (*) total from fcmte04
	group by cid")
#merge fcmte04 & newagg04
#merge by CID
m1<-sqldf("select * from newagg04 join both using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("fix04.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)


#check
#merge newagg06
#load file
	newagg06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\newagg06.csv")

	fcmte06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\cmte06.csv")
#library
library(sqldf)
#sum to fixed column
both<-sqldf("select cid, Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,
	HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
	HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
	HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY, count (*) total from fcmte06
	group by cid")
#merge fcmte06 & newagg06
#merge by CID
m1<-sqldf("select * from newagg06 join both using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("fix06.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#merge newagg08
#load file
	newagg08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\newagg08.csv")

	fcmte08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\cmte08.csv")
#library
library(sqldf)
#sum to fixed column
both<-sqldf("select cid, Min_Whip, Speaker,Chairman,
	Ranking_Member,Min_leader,Maj_leader,
	HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
	HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
	HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY, count (*) total from fcmte08
	group by cid")
#merge fcmte08 & newagg08
#merge by CID
m1<-sqldf("select * from newagg08 join both using (CID)")

#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2")
#writing table to csv
	out_file <- file("fix08.csv", open="a")
	write.table(m1, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#check






