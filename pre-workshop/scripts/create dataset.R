#PAC data
	pac02
	pac04
	pac06
	pac08
#accomodating large dataset
ri<-integer(99985)
library(ff)
two<-ff(vmode="pac02", length=99985)
four<-ff(vmode="pac04", length=99985)

rb<-byte(99985)
fb<-ff(rb)

vmode(ri)
vmode(two)
vmode(rb)
vmode(four)

rbind(.rambytes, .ffbytes)[c("two","four"),]
?vmode
#length
pac02
	99985
pac04
	99985	
pac06
	99973
pac08
	99985
#round 2
06<-ff(vmode="pac06", length=99973)
08<-ff(vmode="pac08", length=99985)
vmode(06)
vmode(08)
#export csv
#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\Krasno.RA\\Data")
#writing table to csv
out_file <- file("Leadership.csv", open="a")
write.table(L, file=out_file, sep=",", dec=".", quote=FALSE, 
col.names=NA, row.names=TRUE)
close(out_file)