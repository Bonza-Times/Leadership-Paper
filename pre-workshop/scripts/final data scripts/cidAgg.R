#Aggregate by CID
#load file
	Cor02 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor02.csv")
 
	Cor04 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor04.csv")

	Cor06 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor06.csv")
 
	Cor08 <- read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\Cor08.csv")
#Aggregate PACID to CID 02
#library
	library(sqldf)
#Add donations for each candidate
	f02<-sqldf("select CID, AdjAmount, Cycle, Min_Whip, Speaker, Chairman,
		Ranking_Member,Min_leader,Maj_leader,
		HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
		HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
		HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY,dv,dvp,
		fr,redist,dpres, District,state,Party,PolParty,
		Majority,
		count (AdjAmount)total from Cor02 group by CID,dv")
#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv
	out_file <- file("cid02.csv", open="a")
	write.table(f02, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#Aggregate PACID to CID 04
#library
	library(sqldf)
#Add donations for each candidate
	f02<-sqldf("select CID, AdjAmount, Cycle, Min_Whip, Speaker, Chairman,
		Ranking_Member,Min_leader,Maj_leader,
		HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
		HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
		HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY,dv,dvp,
		fr,redist,dpres, District,state,Party,PolParty,
		Majority,
		count (AdjAmount)total from Cor04 group by CID,dv")
#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv
	out_file <- file("cid04.csv", open="a")
	write.table(f02, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#Aggregate PACID to CID 06
#library
	library(sqldf)
#Add donations for each candidate
	f02<-sqldf("select CID, AdjAmount, Cycle, Min_Whip, Speaker, Chairman,
		Ranking_Member,Min_leader,Maj_leader,
		HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
		HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
		HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY,dv,dvp,
		fr,redist,dpres, District,state,Party,PolParty,
		Majority,
		count (AdjAmount)total from Cor06 group by CID,dv")
#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv
	out_file <- file("cid06.csv", open="a")
	write.table(f02, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
#Aggregate PACID to CID 08
#library
	library(sqldf)
#Add donations for each candidate
	f02<-sqldf("select CID, AdjAmount, Cycle, Min_Whip, Speaker, Chairman,
		Ranking_Member,Min_leader,Maj_leader,
		HADM,HAGR,HAPP,HARM,HBAN,HBUD,HCOM,
		HEDU,HEGW,HENE,HFIN,HGOV,HHSC,HINT,HITL,HJUD,HRES,
		HRUL,HSCI,HSMA,HSTA,HTRA,HVET,HWAY,dv,dvp,
		fr,redist,dpres, District,state,Party,PolParty,
		Majority,
		count (AdjAmount)total from Cor08 group by CID,dv")
#check
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\final")
#writing table to csv
	out_file <- file("cid08.csv", open="a")
	write.table(f02, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#check
