complete <- function(directory, id = 1:332) {
    
    #open full name list of files in directory
    files_full <- list.files(directory, full.names=TRUE) 
    #create empty data frames to 
    #hold contents of directoryprint(files_full) 
    dat<-data.frame()
    nobs<-data.frame()
    nobs2<-data.frame()
   
    #loop thru directory  
    for (i in id) {
        #read file
        dat <- read.csv(files_full[i])
        #remove NA
        nobs2<-na.omit(dat)
        #count rows in NA scrubbed and pass to new frame
        nobs<-append(nobs,nrow(nobs2))
        #bind column row count and ID
        results <- cbind(id, nobs)   
    }
    results
}   


#use this datafile https://d396qusza40orc.cloudfront.net/rprog%2Fdata%2Fspecdata.zip
