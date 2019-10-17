library(tidyverse)
library(here)
library(spotifyr)

# Você precisará pegar um id e segredo para seu código aqui: https://developer.spotify.com/my-applications/#!/applications 
# 
chaves = read_csv(here::here("code/chaves-do-spotify.csv"), 
                  col_types = "cc")

Sys.setenv(SPOTIFY_CLIENT_ID = pull(chaves, client_id))
Sys.setenv(SPOTIFY_CLIENT_SECRET = pull(chaves, client_secret))

access_token <- get_spotify_access_token()

#
# PRECISA SER RODADO INTERATIVO, linha a linha: 
#

rihanna <- get_artist_audio_features('rihanna')

rihanna = data.frame(lapply(rihanna, as.character), stringsAsFactors=FALSE)

write.csv(df_Place2,"data/rihanna.csv")
        


