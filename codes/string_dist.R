pacman::p_load(tidyverse, stringdist, stringr)

dat <- read_csv(here::here("data/clean_data.csv"))

dat %>% 
  group_by(variedad) %>%
  filter(n() > 4) %>% 
  tally() %>% 
  arrange(desc(n)) %>% View

var_name <- dat %>%
  group_by(variedad) %>%
  filter(n() > 4) %>% ungroup() %>% 
  mutate(variedad = str_to_upper(variedad),
         variedad = stringi::stri_trans_general(variedad,"Latin-ASCII"),
         variedad = str_replace(variedad, ",", "."),
         variedad = str_replace_all(variedad, pattern=" ", repl=""),
         variedad = str_replace(variedad, "STS", ""),
         variedad = str_replace(variedad, "IPRO", ""),
         variedad = str_trim(variedad),
         # variedad = recode(variedad,  
         #                   N5009= NA5009,
         #                   N5009= NA5009)
         ) %>% 
  arrange(variedad) %>% 
  filter(!variedad %in% c(NA, "OTRO", "VARIAS", "EXPERIMENTAL", "MEZCLA","0")) %>% 
  pull(variedad) %>% unique() 

var_name

var_id <- 1:length(var_name)

grupo_id <- vector("integer", length(var_name))

#Looping through unassigned family ids
while(sum(grupo_id == 0) > 0){
  
  ids <- var_id[grupo_id == 0]
  
  dists <- stringdist(var_name[grupo_id == 0][1], 
                      var_name[grupo_id == 0], 
                      method = "dl")
  
  matches <- ids[dists <= 4]
  
  grupo_id[matches] <- max(grupo_id) + 1
}

result <- data.frame(var_id, var_name, grupo_id)
result
