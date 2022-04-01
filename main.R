olive<- read.csv("olive-oil-dot-csv-txt.csv")

#
# starlight<- c("1","1","1","5")
# slayer<- c("2","3","3","2")
# scarlett<- c("3","2","2","1")
# bicyclewheel<- c("4","5","5","6")
# cronos<- c("5","6","6","4")
# kepp<- c("6","4","4","3")

# scores<-data.frame(starlight,slayer,scarlett,bicyclewheel,cronos,kepp)




# names<-c("starlight","slayer","scarlett","bicyclewheel","cronos","kepp")

# data<-data.frame(names, scores)


library(ggplot2)

ggplot(olive, aes(x=X))+
  geom_point(aes(y=A))+
  geom_point(aes(y=T))+
  geom_point(aes(y=N))+
  geom_point(aes(y=K))


