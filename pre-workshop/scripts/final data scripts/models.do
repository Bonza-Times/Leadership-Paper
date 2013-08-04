**Model 1
**Generate variables
gen mCmte= majority*cmte_leader+majority*hrul
gen mLead= majority*party_leader+speaker
gen dem= polparty
gen dCmte= dem*cmte_leader

**check
reg adjamount mLead mCmte  party_leader cmte_leader  majority dem, cluster(cid)

reg adjamount mLead mCmte  party_leader cmte_leader majority dem, cluster(cid)

**Model for Paper
reg adjamount party_leader cmte_leader mLead mCmte majority dem, cluster(cid)


**Alternative model specification
gen demM= dem*majority
reg adjamount dem majority demM, cluster(cid)


reg adjamount demM dCmte dem majority cmte_leader, cluster(cid)
*generate summary stats
gen a=adjamount*dem
gen b=adjamount*majority
gen c=adjamount*demM
gen d=adjamount*cmte_leader
gen e=adjamount*party_leader
gen f=adjamount*mCmte
gen g=adjamount*mLead

**summary stats
summ(a),d
summ(b),d
summ(c),d
summ(d),d
summ(e),d
summ(f),d
summ(g),d

***Cox & Magar model
gen prestige= hrul+happ+hway
gen leader= min_whip +speaker +chairman +min_leader +maj_leader

reg adjamount demM majority dem, cluster(cid) 
reg adjamount majority dem, cluster(cid)

reg adjamount majority dem party_leader cmte_leader  mLead mCmte, cluster(cid)
reg adjamount demM mLead mCmte party_leader cmte_leader majority dem, cluster(cid)
