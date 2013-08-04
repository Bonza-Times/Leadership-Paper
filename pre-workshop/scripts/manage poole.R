#converting text files to csv 

#dw nominate
#Candidates
	d = read.table("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte membership data\\Legislator DW Estimates 1 to 111th Houses.txt", 
            sep="", 
            col.names=c("Congress_Number", "ICPSR_ID","State_Code","District","State","Party","Name","1stDim","2ndDim",
		"1stDimBoot","2ndDimBoot","Cor12","Log-Likelihood","Number_of_Votes","Number_of_Errors","Geometric_Mean_Probability"))
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte membership data\\")
#writing table to csv
	out_file <- file("LegDW.csv", open="a")
	write.table(d, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)

#roll call
#Candidates
	d = read.table("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte membership data\\Roll Call Estimates 1 to 111th Houses.txt", 
            sep="", 
            col.names=c("Congress_Number", "Roll_Call_num","HifHouse","Number of Yeas","Number of Nays","Month of Roll Call","Day","Year",
		"NumCorrectClassified","Predicted Yea/Actual Yea","Predicted Yea/Actual Nay","Predicted Nay/Actual Yea","Predicted Nay/Actual Nay",
		"ProportionCorrect","PRE","Geometric_Mean_Probability","1stDimSpread","1stDimMid","2ndDimSpread","2ndDimMid"))
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\cmte membership data\\")
#writing table to csv
	out_file <- file("RollCallEst.csv", open="a")
	write.table(d, file=out_file, sep=",", dec=".", quote=FALSE, 
	col.names=NA, row.names=TRUE)
	close(out_file)
#ran