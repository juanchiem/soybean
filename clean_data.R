

library(stringdist)

regional_name <- dat %>%
  mutate(regional = str_to_title(regional),
         regional = stringi::stri_trans_general(regional,"Latin-ASCII")) %>% 
  # regional= str_replace(regional, "Adelia (M|m)aria", "Adelia María")) %>% 
  arrange(regional) %>% 
  pull(`regional`) %>% unique() 

regional_id <- 1:length(regional_name)

grupo_id <- vector("integer", length(regional_name))

#Looping through unassigned family ids
while(sum(grupo_id == 0) > 0){
  
  ids <- regional_id[grupo_id == 0]
  
  dists <- stringdist(regional_name[grupo_id == 0][1], 
                      regional_name[grupo_id == 0], 
                      method = "h")
  
  matches <- ids[dists <= 3]
  
  grupo_id[matches] <- max(grupo_id) + 1
}

result <- data.frame(regional_id, regional_name, grupo_id)
