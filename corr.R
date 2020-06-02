corr <- function(directory) {

    files_full <- list.files(directory, full.names=TRUE)
    id<-1:length(files_full)
    dat<-data.frame()
    ##my_data<-data.frame()
    x<-data.frame()
    y<-data.frame()

    for (i in id){
        dat <- rbind(dat, read.csv(files_full[i]))
    }
    x<-(dat$nitrate)
    ##class(x)
    y<-(dat$sulfate)
    ##class(y)
    result<-cor(x, y, use ="complete.obs")
    ##result<-cor(x, y)
result
}


