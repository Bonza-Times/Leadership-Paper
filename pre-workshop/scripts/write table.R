#write table
#library
	library(XML)
	setwd("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data")
#writing table to csv
out_file <- file("early voting.csv", open="a")
write.table(f, file=out_file, sep=",", dec=".", quote=FALSE, 
col.names=NA, row.names=TRUE)
close(out_file)