data <- read.csv("Desktop/Data/ES=F.csv")
sum(is.null(data))
sum(is.na(data))
which(is.na(data))
df<-na.omit(data.frame(data))

write.csv(df,'Desktop/ES=Fclean.csv')
