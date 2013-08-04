#load files
	pac92<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs92.csv")
	pac94<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data\\crp data\\By Type\\pacs\\pacs94.csv")
	pacmatch<-read.csv("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\pre-workshop\\data\\take 2\\pacmatch.csv")

	library(foreign)
	magar<-read.dta("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\final data\\Cox & Magar rep & extension\\Cox & Magar Data\\apsrhou.dta")
	cox<-data.frame(magar)

#load library
	library(sqldf)

#join & reduce 92
	c92<-sqldf("select * from cand92 where FECCandID like 'H%'")
	p92<-sqldf("select * from c92 join pac92 using (CID)")

#join & reduce 94
	c94<-sqldf("select * from cand94 where FECCandID like 'H%'")
	p94<-sqldf("select * from c94 join pac94 using (CID)")

#join 92,94 with corporate pacs
	corp<-sqldf("select * from pacmatch where business=1")
	bhou92<-sqldf("select* from p92 join corp using (PACID)")
	bhou94<-sqldf("select * from p94 join corp using (PACID)")
	
#join 92,94 with labor pacs
	labor<-sqldf("select * from pacmatch where labor=1")
	lhou92<-sqldf("select* from p92 join labor using (PACID)")
	lhou94<-sqldf("select * from p94 join labor using (PACID)")

#reduce to total amounts

#business
	H92<-sqldf("select Cycle,FECCandID,CID,FirstLastP, Party, DistIDRunFor,
			PACID,Amount,Date,RealCode from bhou92")
	h92<-sqldf("select *, sum(Amount) as tamount from H92
			 group by FECCandID")	
	H94<-sqldf("select Cycle,FECCandID,CID,FirstLastP, Party, DistIDRunFor,
			PACID,Amount,Date,RealCode from bhou94")
	h94<-sqldf("select *, sum(Amount) as tamount from H94
			 group by FECCandID")	

#labor
	J92<-sqldf("select Cycle,FECCandID,CID,FirstLastP, Party, DistIDRunFor,
			PACID,Amount,Date,RealCode from lhou92")
	j92<-sqldf("select *, sum(Amount) as tamount from J92
			 group by FECCandID")	
	J94<-sqldf("select Cycle,FECCandID,CID,FirstLastP, Party, DistIDRunFor,
			PACID,Amount,Date,RealCode from lhou94")
	j94<-sqldf("select *, sum(Amount) as tamount from J94
			 group by FECCandID")	
#reduce

#business
 #92
	FECCandID=cox$candid
	Cox<-data.frame(cbind(cox,FECCandID)) 
	Hou92<-sqldf("select * from h92 join Cox using (FECCandID)")
	BHouse92<-sqldf("select congress,stcd,candname,state,district,party,
			FECCandID,Cycle,CID,FirstLastP,PACID,Amount,Date,RealCode
			from Hou92")

#labor

#write table