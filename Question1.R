#----Question1----
#Find the distribution of how many times a user 1 - buys, 2 - sells a token. Which discrete distribution type fits these distributions best? Estimate distribution parameters.

getwd()
setwd("C:/Users/pavit/Documents/Academics/sem3/Stats/Project/data")
dftoken <- read.table("networkbnbTX.txt", 
                      header = FALSE)
names(dftoken)<-c("SenderID","ReceiverID","TimeStamp","Amount")

#----------Number of sells---------

countOfSeller<-table(dftoken$SenderID)
frequencyDataFrame<-as.data.frame(countOfSeller)
colnames(frequencyDataFrame)<-c("SellerID","Count")
countOfCount<-table(frequencyDataFrame$Count)
frequencyDataFrame2<-as.data.frame(countOfCount)
colnames(frequencyDataFrame2)<-c("Token Count Sold","Number of Users")
mean(frequencyDataFrame2$`Number of Users`)
#--------Plotting 100% of the data----------

attach(frequencyDataFrame2)
plot(y=frequencyDataFrame2$`Number of Users`, 
     x=frequencyDataFrame2$`Token Count Sold`, 
     ylab="Number of Users", 
     xlab="No of times a token was sold",
     main="Number of times user sells token",
     type="o")

#Removing 99% of the data because distribution is not clearly visible with 100%

plot(y=frequencyDataFrame2$`Number of Users`, 
     x=frequencyDataFrame2$`Token Count Sold`,  
     ylab="Number of Users", 
     xlab="No of times a token was sold",
     main="Number of times user sells token",
     ylim = c(0,165.75),
     type="o")


#----------Number of buys---------

countOfBuyer<-table(dftoken$ReceiverID)
freqDataFrame<-as.data.frame(countOfBuyer)
colnames(freqDataFrame)<-c("ReceiverID","Frequency")
countOfFrequency<-table(freqDataFrame$Frequency)
freqDataFrame2<-as.data.frame(countOfFrequency)
colnames(freqDataFrame2)<-c("Token Count Bought","Number of Users")


#---------Plotting 100% of the data---------

attach(freqDataFrame2)
plot(y=freqDataFrame2$`Number of Users`, 
     x=freqDataFrame2$`Token Count Bought`, 
     ylab="Number of Users", 
     xlab="No of times a token was bought",
     main="Number of times user buys token",
     type="o")

#Removing 99% of the data because distribution is not clearly visible with 100%

plot(y=freqDataFrame2$`Number of Users`, 
     x=freqDataFrame2$`Token Count Bought`, 
     ylab="Number of Users", 
     xlab="No of times a token was bought",
     main="Number of times user buys token",
     ylim = c(0,2529.94),
     type="o")

