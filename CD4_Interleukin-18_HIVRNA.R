library(readxl)
UsmanP <- read_excel("~/ERIOLUWa MAIN DATA.xlsx", 
                                 sheet = "Data")
View(UsmanP)


ggplot(UsmanP,aes(x=CD4_BL_Category2,y=IL18_BL,
                  color=factor(TrTMT,levels = c("Before","After"))))+
  geom_boxplot()+scale_color_manual(name="",values = c("blue","black"))+
  geom_point(position=position_jitterdodge())#+
 #  stat_pvalue_manual(bracket.size = 1,size=7,stat.tesb,label = "p.adj.signif",
 #  color="darkblue")+geom_line(data = tibble(x=c(0.8,1.8),
 #  y=c(9500,9500)),aes(x=x,y=y),inherit.aes = FALSE,size=1,
 #  color="darkblue")+geom_line(data = tibble(x=c(0.8,0.8),
 #  y=c(9500,9100)),aes(x=x,y=y),inherit.aes = FALSE,size=1,
 #  color="darkblue")+geom_line(data = tibble(x=c(1.8,1.8),
 #  y=c(9500,9100)),aes(x=x,y=y),inherit.aes = FALSE,size=1,
 #  color="darkblue")+geom_line(data = tibble(x=c(1.2,2.2),
 # y=c(8100,8100)),aes(x=x,y=y),inherit.aes = FALSE,size=1,
 #  color="darkblue")+geom_line(data = tibble(x=c(1.2,1.2),
 #  y=c(8100,7700)),aes(x=x,y=y),inherit.aes = FALSE,size=1,
 #  color="darkblue")+geom_line(data = tibble(x=c(2.2,2.2),
 #  y=c(8100,7700)),aes(x=x,y=y),inherit.aes = FALSE,size=1,color="darkblue")+
 #  geom_text(data = tibble(x=1.3,y=10100),aes(x=x,y=y,label="ns"),
 #  inherit.aes = FALSE,size=7,color="darkblue")+
 #  geom_text(data = tibble(x=1.7,y=8700),aes(x=x,y=y,label="ns"),
 #  inherit.aes = FALSE,size=7,color="darkblue")

Next:
  Ca+theme_minimal()+theme(legend.position = "null",axis.title.x=element_text(colour="darkblue", size=11.4,face = "bold"),axis.title.y=element_text(colour="darkblue",size=17,face = "bold"),axis.line = element_line(colour="black",size = 1),axis.text.x = element_text(size=13,face = "bold"),axis.ticks = element_line(size = 1))+labs(x = "CD4 Category(<200= <200 cells/mm^3, >200= >200 cells/mm^3)",y="IL-18 (gp/mL)")+theme(strip.text=element_text(size = 13.7,face = "bold"),axis.title.y = element_text(vjust=2.9))
