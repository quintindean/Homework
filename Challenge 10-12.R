data <- read.csv("https://raw.githubusercontent.com/chrischizinski/gittutorial/master/data/Gaeta_etal_CLC_data.csv")
data %>% 
  mutate(length_cat= ifelse(length>300, "Large", "Small")) %>% 
  ggplot()+
  geom_histogram(aes( x=scalelength, fill= length_cat),position = "identity",alpha=.7)+
  facet_wrap(~length_cat)+
  theme(legend.position = "none")+
  labs(x= "Scale Length", y="Count")



