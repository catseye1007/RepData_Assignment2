setwd("D:/AdLearn/R/data")

if(!file.exists("stormdata")) {
        dir.create("stormdata")
}
fileUrl<-"https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
download.file(fileUrl,destfile = "stormdata.bz2" )
dateDownloaded <- date()

stormdata.csv<- bzfile("stormdata.bz2")
stormdata<-read.csv(stormdata.csv)
