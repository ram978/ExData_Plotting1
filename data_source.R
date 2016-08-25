getwd()
setwd("/Users/janakiramsundaraneedi/Downloads")
library(dplyr)
load_Data <- function() {
        read_data <- read.table(householdFile, header=T, sep=";", na.strings="?")
        sep_date <- read_data[read_data$Date %in% c("1/2/2007","2/2/2007"),]
        withtime<-strptime(paste(sep_date$Date, ' ', sep_date$Time), "%d/%m/%Y %H:%M:%S")
        cbind(withtime, sep_date)
}