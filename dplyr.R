#dplyr assignment
#Assignment 
# Bank data dplyr assignment : Part 1
# 
# 1. How many married people have taken a loan before?
#   
#   2. How many females aged 40 and above have defaulted on a loan?
#   
#   3. How many single defaulters have a negative balance?
#   
#   4. How many married defaulters are self employed? 
#   
#   5. Generate a dataset that contains the age and education levels of defaulters with a negative balance
# 
# 6. How many single defaulters have an education level that is not primary?

library(dplyr)
#CODE
BankDplyr<-read.csv(file = "Bank Data.csv")
BankDplyr

#How many married people have taken a loan before?
married_loan<-BankDplyr %>%
  filter(BankDplyr$marital=="married" & BankDplyr$loan=="yes")
married_loan
nrow(married_loan) #4660

#or 
married_loan2<-BankDplyr[BankDplyr$marital=="married" & BankDplyr$loan=="yes",]
married_loan2
nrow(married_loan2) #4660

#How many females aged 40 and above have defaulted on a loan?
loan_default<-BankDplyr %>%
  filter(BankDplyr$)

#How many single defaulters have a negative balance?
single_def_negbalance<-BankDplyr %>%
  filter(marital=="single"&default=="yes"&balance<0)
single_def_negbalance
nrow(single_def_negbalance) #137

#or
single_def_negbalance2<-BankDplyr[BankDplyr$marital=="single"&BankDplyr$default=="yes"&BankDplyr$balance<0,]
single_def_negbalance2
nrow(single_def_negbalance2) #137

#How many married defaulters are self employed?
married_def_self<-BankDplyr %>%
  filter(BankDplyr$marital=="married"&BankDplyr$default=="yes"&BankDplyr$job=="self-employed")
married_def_self
nrow(married_def_self) #24

#or
married_def_self2<-BankDplyr[BankDplyr$marital=="married"&BankDplyr$default=="yes"&BankDplyr$job=="self-employed",]
married_def_self2
nrow(married_def_self2)


#5. Generate a dataset that contains the age and education levels of defaulters with a 
#negative balance
def_age_education_dataset<-BankDplyr %>%
  filter(BankDplyr$default=="yes"&BankDplyr$balance<0) %>% 
  select(age,education)
def_age_education_dataset  
nrow(def_age_education_dataset) #440

#or
def_age_education_dataset2<-BankDplyr[BankDplyr$default=="yes"&BankDplyr$balance<0,c("age","education")]
def_age_education_dataset2
nrow(def_age_education_dataset2)  #440



#How many single defaulters have an education level that is not primary?
single_def_pri<-BankDplyr %>%
  filter(BankDplyr$marital=="single"&BankDplyr$default=="yes"&BankDplyr$education=="primary") 
single_def_pri
nrow(single_def_pri) #22 or

single_def_pri2<-BankDplyr[BankDplyr$marital=="single"&BankDplyr$default=="yes"&BankDplyr$education=="primary",]
single_def_pri2
nrow(single_def_pri2) #22