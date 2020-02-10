library(tidyverse)
#Luetaan aineisto sisään

atc <- read_delim(paste0(getwd(),"/Aineisto/atc.txt"),";")
laakemuoto <- read_delim(paste0(getwd(),"/Aineisto/laakemuoto.txt"),";")
ma_maaraamisehto<-read_delim(paste0(getwd(),
                              "/Aineisto/maaraaikaisetmaaraamisehto.txt"),";")
names(ma_maaraamisehto)<-paste0("ma_",names(ma_maaraamisehto))
maaraamisehto<-read_delim(paste0(getwd(),"/Aineisto/maaraamisehto.txt"),";")
pakkaus_m<-read_delim(paste0(getwd(),"/Aineisto/pakkaus-m.txt"),";")
names(pakkaus_m)<-paste0("maar_",names(pakkaus_m))

pakkaus1<-read_delim(paste0(getwd(),"/Aineisto/pakkaus1.txt"),";")
pakkaus_nolla<-read_delim(paste0(getwd(),"/Aineisto/pakkaus_nolla.txt"),";")
names(pakkaus_nolla)<-paste0("nolla_",names(pakkaus_nolla))
sailytysastia <- read_delim(paste0(getwd(),"/Aineisto/sailytysastia.txt"),";")
#Pakkaus1 &pakkaus0 sekä pakkaus_m samoja saadaan atc-tunnisteella 
#kiinni atc-tauluun
#Pakkaus_m sisältää määräaikaiset lääkkeet, pakkaus1 nykytilan 
#ja pakkaus0 lähtötilan käytä näistä pakkaus 1 ja pakkaus_m!

#Yhdistämisiä ei kuitenkaan välttämättä tarvita!