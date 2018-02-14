
library(foreign) 

temp <- file("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/test.zip")

download.file("https://www.cdc.gov/brfss/annual_data/2015/files/LLCP2015XPT.zip", 
              "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/test.zip")



unzip("/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain/test.zip",exdir = 
        "/Users/marthawetzel/Desktop/Emory/04_Spring 2018/NRSG 741/Final Project/Policies-and-Pain")

brfss2015 <- read.xport("LLCP2015.XPT")


brfss <- read.xport("brfss2016.xpt")



