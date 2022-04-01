# andre<- c("starlight","slayer", "scarlett", "bicycle wheel", "cronos","kepp")
# Neil<- c("starlight", "scarlett", "slayer", "kepp", "bicycle wheel","cronos" )
# tin<- c("scarlett", "slayer", "kepp", "cronos", "starlight", "bicycle wheel")
# karen<- c("starlight", "scarlett", "slayer", "kepp", "bicycle wheel","cronos" )


# starlight<- c("1","1","1","5")
# slayer<- c("2","3","3","2")
# scarlett<- c("3","2","2","1")
# bicyclewheel<- c("4","5","5","6")
# cronos<- c("5","6","6","4")
# kepp<- c("6","4","4","3")



oilnames<- c("starlight", "scarlett", "slayer", "kepp", "bicycle wheel","cronos" )
scores<- c(33, 34.5, 31.5, 17, 11, 8)

library(ggplot2)

data<- data.frame(oilnames, scores)



g<- ggplot(data, aes(x=oilnames, y=scores))+
  geom_col( aes(oilnames, scores))

