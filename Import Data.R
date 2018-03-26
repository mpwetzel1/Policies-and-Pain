
library(foreign) 
library(tidyverse)
library(haven)
library("sas7bdat")


#--------------------------------------------------------

#                   BRFSS 2015

#--------------------------------------------------------


########################################################
# 
#
#   Title: Import Data
#   Purpose: Download, unzip, and extract necessary data 
#     from BRFSS files and other supplementary files
#   Author: Martha Wetzel
#   Date: 2018-03-08
#
#
########################################################


#--------------------------------------------------------
#                   Laws
#--------------------------------------------------------

pdmplaws <- read_sas("laws.sas7bdat")


#--------------------------------------------------------
#                   2015
#--------------------------------------------------------

#######  Download and import
temp <- file("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/test.zip")

download.file("https://www.cdc.gov/brfss/annual_data/2015/files/LLCP2015XPT.zip", 
              "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/test.zip")


unzip("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/test.zip",exdir = 
        "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain")

file.rename("LLCP2015.XPT ", "LLCP2015.XPT")

brfss2015 <- read.xport("LLCP2015.XPT")

names(brfss2015)
str(brfss2015)

# Limit to needed variables
brfss2015b <- select(brfss2015, X_STATE, IMONTH,  IYEAR, SEX, LSATISFY,  QLACTLM2,  POORHLTH,  PHYSHLTH, GENHLTH, NUMADULT, CHILDREN,  
                     MEDCOST,  SMOKE100,  X_AGE80, X_HISPANC,  X_PRACE1,  EDUCA, EMPLOY1, INCOME2, CELLFON2,  DECIDE)

# Kill data to save space
rm(brfss2015)


#--------------------------------------------------------
#                   2014
#--------------------------------------------------------

#######  Download and import

download.file("https://www.cdc.gov/brfss/annual_data/2014/files/LLCP2014XPT.zip", 
              "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2014.zip")


unzip("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2014.zip",exdir = 
        "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain")

file.rename("LLCP2014.XPT ", "LLCP2014.XPT")

brfss2014 <- read.xport("LLCP2014.XPT")

file.remove("LLCP2014.XPT")

names(brfss2014)
str(brfss2014)

# Limit to needed variables
brfss2014b <- select(brfss2014, X_STATE, IMONTH,  IYEAR, LSATISFY,  QLACTLM2,  POORHLTH,  PHYSHLTH, GENHLTH, 
                     NUMADULT, CHILDREN,  MEDCOST,  SMOKE100,  SEX, X_AGE80, X_HISPANC,  X_PRACE1,  EDUCA, EMPLOY1, INCOME2,
                     CELLFON2,  DECIDE)

# Kill data to save space
rm(brfss2014)


#--------------------------------------------------------
#                   2013
#--------------------------------------------------------

#######  Download and import

download.file("https://www.cdc.gov/brfss/annual_data/2013/files/LLCP2013XPT.zip", 
              "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2013.zip")


unzip("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2013.zip",exdir = 
        "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain")

file.rename("LLCP2013.XPT ", "LLCP2013.XPT")

brfss2013 <- read.xport("LLCP2013.XPT")

file.remove("LLCP2013.XPT")

names(brfss2013)
str(brfss2013)

# Limit to needed variables
brfss2013b <- select(brfss2013, X_STATE, IMONTH,  IYEAR, LSATISFY,  QLACTLM2,  POORHLTH,  PHYSHLTH, GENHLTH, 
                     NUMADULT, CHILDREN,  MEDCOST,  SMOKE100,  SEX, X_AGE80, X_HISPANC,  X_PRACE1,  EDUCA, EMPLOY1, INCOME2,
                     CELLFON2,  DECIDE)

# Kill data to save space
rm(brfss2013)



#--------------------------------------------------------
#                   2012
#--------------------------------------------------------

#######  Download and import

download.file("https://www.cdc.gov/brfss/annual_data/2012/files/LLCP2012XPT.zip", 
              "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2012.zip")


unzip("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2012.zip",exdir = 
        "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain")

brfss2012 <- read.xport("LLCP2012.XPT")

file.remove("LLCP2012.XPT")

names(brfss2012)
str(brfss2012)

# Limit to needed variables
brfss2012b <- select(brfss2012, X_STATE, IMONTH,  IYEAR, LSATISFY,  QLACTLM2,  POORHLTH,  PHYSHLTH, GENHLTH, 
                     NUMADULT, CHILDREN,  MEDCOST,  SMOKE100,  SEX, AGE, HISPANC2,  X_PRACE,  EDUCA, EMPLOY, INCOME2,
                     CELLFON2, HIVRISK3)

# Kill data to save space
rm(brfss2012)


#--------------------------------------------------------
#                   2011
#--------------------------------------------------------

#######  Download and import

download.file("https://www.cdc.gov/brfss/annual_data/2011/files/LLCP2011XPT.zip", 
              "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2011.zip")


unzip("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2011.zip",exdir = 
        "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain")

brfss2011 <- read.xport("LLCP2011.XPT")

file.remove("LLCP2011.XPT")

names(brfss2011)
str(brfss2011)

# Limit to needed variables
brfss2011b <- select(brfss2011, X_STATE, IMONTH,  IYEAR, LSATISFY,  QLACTLM2,  POORHLTH,  PHYSHLTH, GENHLTH, 
                     NUMADULT, CHILDREN,  MEDCOST,  SMOKE100,  SEX, AGE, HISPANC2,  X_PRACE,  EDUCA, EMPLOY, INCOME2,
                     CELLFON2, HIVRISK3)

# Kill data to save space
rm(brfss2011)


#--------------------------------------------------------
#                   2010
#--------------------------------------------------------

#######  Download and import

download.file("http://www.cdc.gov/brfss/annual_data/2010/files/CDBRFS10XPT.zip", 
              "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2010.zip")


unzip("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/BRFSS2010.zip",exdir = 
        "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain")

brfss2010 <- read.xport("CDBRFS10.xpt")

file.remove("CDBRFS10.XPT")

names(brfss2010)
str(brfss2010)

# Limit to needed variables
brfss2010b <- select(brfss2010, X_STATE, IMONTH,  IYEAR, LSATISFY,  QLACTLM2,  POORHLTH,  PHYSHLTH, GENHLTH, 
                     NUMADULT, CHILDREN,  MEDCOST,  SMOKE100,  SEX, AGE, HISPANC2,  X_PRACE,  EDUCA, EMPLOY, INCOME2,
                     CELLFON, HIVRISK2)

# Kill data to save space
rm(brfss2010)

#--------------------------------------------------------
#                Stack Data Sets
#--------------------------------------------------------

allbrfss <- bind_rows(brfss2010b, brfss2011b, brfss2012b, brfss2013b, brfss2014b, brfss2015b)

# Rename State and year variables
names(allbrfss)[names(allbrfss) == 'X_STATE'] <- 'state'
names(allbrfss)[names(allbrfss) == 'IYEAR'] <- 'year'
names(allbrfss)

#--------------------------------------------------------
#                Add laws
#--------------------------------------------------------

laws <-  read.sas7bdat("laws.sas7bdat") 
names(laws)
str(laws)

# Create FIPS code that is numeric
state2 <- as.numeric(laws$state)
laws <- laws %>% mutate(state_num = as.numeric(as.character(laws$state)))
laws <- laws %>% mutate(year_char = as.character(laws$year))

# Execute the merge
joinby <- c("state_num" = "state","year_char"="year")
alldata <- inner_join(laws, allbrfss, by = joinby)

# Check on what is getting deleted
joinby2 <- c("state"="state_num", "year"="year_char")
Check <- anti_join(allbrfss, laws, by = joinby2)


# Check that years make sense
table(allbrfss$year)
table(alldata$year)
# Why did obs count change?
MissState <- filter(allbrfss, is.na(allbrfss$state))

#--------------------------------------------------------
#                Clean Variables
#--------------------------------------------------------

#---- Dependent variables ----
# Activity Limitations binary
alldata <- alldata %>% mutate(Limitation = if_else(QLACTLM2==1, 1,
                                                                       if_else(QLACTLM2==2, 0, NA_real_)))
# Check new variable
table(alldata$QLACTLM2)
table(alldata$Limitation)

# Poor health days of activity limitation
alldata <- alldata %>% mutate(DaysLimited = if_else(POORHLTH <= 30, POORHLTH, NA_real_))
# Check new variable


table(alldata$POORHLTH)
table(alldata$DaysLimited)

hist(alldata$DaysLimited)

# EMPLOY1
# Make binary indicating unable to work
alldata <- alldata %>% mutate(CantWork = if_else(EMPLOY1 ==8, 1,
                                                              if_else(EMPLOY1 != 9, 0, NA_real_)))
table(alldata$EMPLOY1)
table(alldata$CantWork)

#---- Covariates  ----
# MEDCOST
alldata <- alldata %>% mutate(MEDCOST_cln = if_else(MEDCOST == 1, 1,
                                                          if_else(MEDCOST==2, 0, NA_real_)))
# Check new variable
table(alldata$MEDCOST)
table(alldata$MEDCOST_cln)

# GENHLTH
alldata <- alldata %>% mutate(GENHLTH_cln = if_else(GENHLTH > 5, NA_real_, GENHLTH))

# Check new variable
table(alldata$GENHLTH)
table(alldata$GENHLTH_cln)

# SMOKE100
alldata <- alldata %>% mutate(SMOKE100_cln = if_else(SMOKE100 == 1, 1,
                                                          if_else(SMOKE100==2, 0, NA_real_)))
table(alldata$SMOKE100)
table(alldata$SMOKE100_cln)

# Look at age distribution
hist(alldata$X_AGE80)
table(alldata$X_AGE80)

# _HISPANC
alldata <- alldata %>% mutate(X_HISPANC_cln = if_else(X_HISPANC == 1, 1,
                                                           if_else(X_HISPANC==2, 0, NA_real_)))
table(alldata$X_HISPANC)
table(alldata$X_HISPANC_cln)

# EDUCA
alldata <- alldata %>% mutate(EDUCA_cln = if_else(EDUCA ==9, NA_real_, EDUCA))

table(alldata$EDUCA)
table(alldata$EDUCA_cln)

# sex
alldata <- alldata %>% mutate(FEMALE = if_else(SEX ==2, 1, 0))

# Combine NUMADULT and	CHILDREN to make a family composition variable like on NHIS
levels_fc <- c(1,2,3, 4)
labels_fc <- c("One Adult No Children", "Multiple Adults No Children", "One Adult Plus Child(ren)", 
           "Multiple Adults Plus Child(ren)")


alldata <- alldata %>% mutate(FamComp = if_else(NUMADULT == 1 & CHILDREN == 88, 1, # This is 1 adult no kids
                                              if_else(NUMADULT > 1 & CHILDREN == 88, 2, # This is > 1 adult no kids
                                              if_else(NUMADULT == 1 & CHILDREN >= 1 & CHILDREN < 88, 3, # 1 adult + kids
                                              if_else(NUMADULT > 1 & CHILDREN >= 1 & CHILDREN < 88, 4, NA_real_)))))

# HELP This doesn't work
alldata <- alldata %>% factor(alldata$FamComp, levels_fc, labels_fc)

table(alldata$NUMADULT, alldata$CHILDREN) # LOOK UP HOW TO GET COLUMN SUMMARY COUNTS
table(alldata$FamComp)

# Cell Phone Survey
alldata <- alldata %>% mutate(CellSurvey = if_else(CELLFON2==1, 1, 0))

# Age - these aren't exactly equivalent b/c X_AGE80 is top coded, but oh well
names(alldata)[names(alldata) == 'AGE'] <- 'AgeOld'
names(alldata)[names(alldata) == 'X_AGE80'] <- 'AgeOld2'
alldata <- alldata %>% mutate(Age = if_else(year <= 2012, AgeOld, AgeOld2))

# Create an employed variable
names(alldata)[names(alldata) == 'EMPLOY'] <- 'EmployOld'
names(alldata)[names(alldata) == 'EMPLOY1'] <- 'EmployOld2'
alldata <- alldata %>% mutate(EmployCats = if_else(year <= 2012, EmployOld, EmployOld2))
table(alldata$EmployCats, exclude=NULL)

# Clean up race vars
alldata <- alldata %>% mutate(RaceWhite = if_else(X_PRACE ==1 | X_PRACE1 ==1, 1, 
                                                if_else( X_PRACE==2, 0, NA_real_) ))
(2<= X_PRACE & X_PRACE <= 8 ) | (2 <= X_PRACE1 & X_PRACE1 <= 8 )

X_PRACE
X_PRACE1

alldata <- alldata %>% mutate(Employed = if_else(alldata$EmployCats %in% c(1, 2, 5, 6), 1, 0, missing=NULL) )
table(alldata$Employed, exclude=NULL)




#---- Fix dates that are in SAS format ----

# Any PDMP Date
alldata <- alldata %>% mutate(AnyPDMPDate2 = as.Date(alldata$AnyPDMPDate, origin="1960-01-01"))

# Mandatory PDMP Date
alldata <- alldata %>% mutate(Mandatory_Date2 = as.Date(alldata$Mandatory_Date, origin="1960-01-01"))

# Marijuana Law Dates
alldata <- alldata %>% mutate(Marijuana_eff_date2 = as.Date(alldata$Marijuana_eff_date, origin="1960-01-01"))
alldata <- alldata %>% mutate(Marijuana_Disp_Date2 = as.Date(alldata$Marijuana_Disp_Date, origin="1960-01-01"))


#----  Create flags for records that occurred after the policies  ----

# Create fake interview data
alldata <- alldata %>% mutate(InterviewDate = ISOdate(year = alldata$year, month = alldata$IMONTH, day=1))
table(alldata$IMONTH, alldata$InterviewDate)

# PDMP dates
alldata <- alldata %>% mutate(PostOptPDMP = if_else((alldata$InterviewDate > alldata$AnyPDMPDate2) & (alldata$AnyPDMP==1) & 
      (alldata$MandatoryPDMP != 1) , 1, 0))

alldata <- alldata %>% mutate(PostMandPDMP = if_else((alldata$InterviewDate > alldata$Mandatory_Date2)  &
                                                      (alldata$MandatoryPDMP == 1) , 1, 0))

# Marijuana Dates
alldata <- alldata %>% mutate(PostMarijDisp = if_else((alldata$InterviewDate > alldata$Marijuana_Disp_Date) , 1, 0))
alldata <- alldata %>% mutate(PostMarijEff = if_else((alldata$InterviewDate > alldata$Marijuana_eff_date) , 1, 0))

# Check - summarize data at state/year level
ByStYear <- alldata %>% group_by(Statecode, year)
summarize(ByStYear, sum(PostOptPDMP))















