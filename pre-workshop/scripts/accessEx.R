#Facts for access seeking
attach(Total)
a1<-lm(AdjAmount~PolParty)
summary(a1)
#create table
a2<-AdjAmount*PolParty
hist(a2)
#create access dataset
access<-cbind(PACID,CID,AdjAmount,a2,Cycle)
#check
t.test(AdjAmount~PolParty)
#not significant?
#pull file
	nope<- ("C:\\Documents and Settings\\Ty\\My Documents\\leadership paper\\data\\take 2\\final data\\access examples.csv")

attach(nope)
names(nope)
#OLS regression
n1<-lm(AdjAmount~Anheuser.Busch+Bristol_Myers.Squibb+Citigroup+Hallmark
	+Anheuser.Busch*Dem+Bristol_Myers.Squibb*Dem+
	Citigroup*Dem+Hallmark*Dem)
summary(n1)
#check
#graph
m1=AdjAmount*(Anheuser.Busch)
m2=AdjAmount*Bristol_Myers.Squibb),Citigroup,Hallmark,PepsiCo.Inc
	,Anheuser.Busch*Dem,Bristol_Myers.Squibb*Dem,
	Citigroup*Dem,Hallmark*Dem,PepsiCo.Inc*Dem)


barplot(Anheuser.Busch,Bristol_Myers.Squibb,Citigroup,Hallmark,PepsiCo.Inc
	,Anheuser.Busch*Dem,Bristol_Myers.Squibb*Dem,
	Citigroup*Dem,Hallmark*Dem,PepsiCo.Inc*Dem)