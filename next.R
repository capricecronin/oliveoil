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


#
# oilnames<- c("Starlight", "Scarlett", "Slayer", "Kepp", "Bicycle Wheel","Cronos" )
# scores<- c(33, 34.5, 31.5, 17, 11, 8)
#
# library(ggplot2)
#
# data<- data.frame(oilnames, scores)
#
# col<- c("darkslategray", "darkslateblue", "cornflowerblue" , "darkseagreen", "lightblue1" ,"darkslategray4")
#

#
# g<- ggplot(data, aes(x=oilnames, y=scores))+
#   geom_col(fill= col,color= "gray0", aes(oilnames, scores))+
#   labs(title = "Overall Olive Oil Score", caption = "Scarlett Wins")+
#   xlab("Oil Names")+
#   ylab("Scores")+
#   scale_y_continuous(expand = c(0, 0), limits = c(0, 40))+
#   theme_bw()

library(ggplot2)

participants<- c("Andre", "Neil" , "Karen", "Tin")
PeopleColors<- c("seagreen3","palegoldenrod","thistle2", "lightcyan4")

oilgraph<- function (name, color1, color2, color3, color4, data, scores, bordercolor, description, subt){
  ggplot(data, aes(x= "", y= scores, fill = participants))+
    geom_col(color= bordercolor)+
    coord_polar(theta = "y")+
    scale_fill_manual(values = c(color1,color2, color3, color4))+
    theme_void()+
    labs(title = name, subtitle =subt, caption = description)

}
bwscores<- c(5,3,3,0)
bwdata<- data.frame(participants, bwscores)

oilgraph(name = "Bicycle Wheel", color1 = "palegreen4", color2 = "khaki", color3 = "lightpink", color4 = "lightcyan" ,data = bwdata, scores = bwscores, bordercolor = "burlywood4", description = "Fifth Place - Masserie di Sant’eramo Extra Virgin Olive Oil (“Flavorful”)", subt = "Pie Chart of Bicycle Wheel's Score")

# keppscores<- c(0,5,5,7)
# keppdata<- data.frame(participants, keppscores)
# PeopleColors<- c("seagreen3","palegoldenrod","thistle2", "lightcyan4")
#
# ggplot(keppdata, aes(x= "", y= keppscores, fill = participants))+
#   geom_col(color = "snow4")+
#   coord_polar(theta = "y")+
#   scale_fill_manual(values = PeopleColors)+
#   theme_void()+
#   labs(title = "Kepp", subtitle = "Pie Chart of Kepp's Score", caption = "Sonoma Gourmet Basil &
#    Parmesan Organic Made With Extra Virgin Olive Oil - Fourth Place")
#


# SlayerScore<-c(8.75,7,7,8.75)
#
# slayerdata<- data.frame(participants, SlayerScore)
# PeopleColors<- c("seagreen1","lemonchiffon4","thistle1", "paleturquoise2")
# ggplot(slayerdata, aes(x ="", y= SlayerScore, fill = participants))+
#   geom_col(color= "yellow")+
#   coord_polar(theta = "y")+
#   scale_fill_manual(values = PeopleColors)+
#   theme_void()+
#   labs(title = "Slayer", subtitle = "Pie Chart of Slayer's Score", caption = "Unio (?) Extra Virgin Olive Oi - Third Place")




#
# StarlightScore<- c(1,1,1,5)
# StarlightScore2<-c(10,10,10,3)
#
# PeopleColors<- c("seagreen4","lemonchiffon2","thistle", "paleturquoise")
#
# StarData<- data.frame(participants, StarlightScore2)
#
# ggplot(StarData, aes(x = "", y= StarlightScore2, fill= participants))+
#   geom_col(color="black")+
#   coord_polar(theta = "y")+
#   scale_fill_manual(values = PeopleColors) +
#   theme_void()+
#   labs(title = "Starlight", subtitle = "Pie Chart of Starlight's Score", caption = " Trader Joes 100% Itallian Organic Extra Olive Oil - Second Place")
#

# cronosscore<- c( 3 ,0,0,5)
#
# crodata<- data.frame(participants, cronosscore)
# PeopleColors<- c("seagreen3","lemonchiffon2","thistle", "paleturquoise3")

# ggplot(crodata, aes(x = "", y = cronosscore, fill= participants))+
#   geom_col()+
#   coord_polar(theta = "y")+
#   scale_fill_manual(values = PeopleColors)+
#   theme_void()+
#   labs(title = "Cronos",caption = "Monini White Truffle Flavored - Last Place", subtitle = "Pie Chart of Cronos' Scores")