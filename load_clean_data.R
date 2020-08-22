pacman::p_load(tidyverse) 

dat <- readxl::read_excel(here::here("Planilla soja Nodo Oeste - Juanchi.xlsx"),
                  .name_repair = janitor::make_clean_names) 

glimpse(dat)

dat %>% arrange(regional) %>% 
  pull(`regional`) %>% unique() 

dat <- dat %>%
  mutate(regional = str_to_title(regional), # capital letters
         regional = stringi::stri_trans_general(regional,"Latin-ASCII"), # sacar acentos 
         regional = recode(regional,  # cambios manuales
                           'Vicuna Mackenna'= 'V. Mackenna',
                           Montecristo = "Monte Cristo", 
                           "Los Surgentes Inriville" = "Los Surgentes-Inriville",
                           "Los Surgentes" = "Los Surgentes-Inriville"), 
         fecha_siembra = lubridate::ymd(fecha_de_siembra_dia_mes))

dat %>% arrange(regional) %>% 
  pull(`regional`) %>% unique() 

dat <- read_csv(here::here("data/clean_data.csv"))


dat %>%   
  mutate(variedad = str_squish(str_to_upper( gsub(',', '\\.', variedad)))) %>% 
  arrange(variedad) %>% 
  pull(`variedad`) %>% 
  unique() 

# dat %>% group_by(variedad) %>% tally()

write_csv(dat, "clean_data.csv")
