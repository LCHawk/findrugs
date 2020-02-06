library(tidyverse)
#Luetaan aineisto sisään

atc <- read_delim(paste0(getwd(),"/Aineisto/atc.txt"),";")
laakemuoto <- read_delim(paste0(getwd(),"/Aineisto/laakemuoto.txt"),";")
ma_maaraamisehto<-read_delim(paste0(getwd(),
                              "/Aineisto/maaraaikaisetmaaraamisehto.txt"),";")
names(ma_maaraamisehto)<-paste0("ma_",names(ma_maaraamisehto))
maaraamisehto<-read_delim(paste0(getwd(),"/Aineisto/maaraamisehto.txt"),";")
pakkaus_m<-read_delim(paste0(getwd(),"/Aineisto/pakkaus-m.txt"),";")
pakkaus1<-read_delim(paste0(getwd(),"/Aineisto/pakkaus1.txt"),";")
pakkaus_nolla<-read_delim(paste0(getwd(),"/Aineisto/pakkaus_nolla.txt"),";")
names(pakkaus_nolla)<-paste0("nolla_",names(pakkaus_nolla))

#Pakkaus1 &pakkaus0 samoja saadaan atc-tunnisteella kiinni atc-tauluun