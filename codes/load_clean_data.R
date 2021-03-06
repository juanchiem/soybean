pacman::p_load(tidyverse) 

raw_dat <- readxl::read_excel(here::here("data", "Planilla soja Nodo Oeste - Juanchi.xlsx"),
                   .name_repair = janitor::make_clean_names) 
 
glimpse(raw_dat)

# Regionales
 
raw_dat %>% arrange(regional) %>%
  pull(`regional`) %>% unique()

dat <- raw_dat %>%
  mutate(regional = str_trim(string = regional),
         regional = str_to_title(regional), # capital letters
         regional = stringi::stri_trans_general(regional,"Latin-ASCII"), # sacar acentos
         regional = recode(regional,  # cambios manuales
                           'Vicuna Mackenna'= 'V. Mackenna',
                           Montecristo = "Monte Cristo",
                           "Los Surgentes Inriville" = "Los Surgentes-Inriville",
                           "Los Surgentes" = "Los Surgentes-Inriville"),
         fecha_siembra = lubridate::ymd(fecha_de_siembra_dia_mes))

dat %>% arrange(regional) %>%
  pull(`regional`) %>% unique()

Loac
dat <- dat %>%
  mutate(regional = str_to_title(localidad), # capital letters
         regional = stringi::stri_trans_general(localidad,"Latin-ASCII"), # sacar acentos
         regional = recode(regional,  # cambios manuales
                           'Vicuna Mackenna'= 'V. Mackenna',
                           Montecristo = "Monte Cristo",
                           "Los Surgentes Inriville" = "Los Surgentes-Inriville",
                           "Los Surgentes" = "Los Surgentes-Inriville"))
dat <- dat %>%
  mutate(fecha_siembra = lubridate::ymd(fecha_de_siembra_dia_mes))

dat <- read_csv(here::here("data/clean_data.csv"))
glimpse(dat)

dat %>%   
  mutate(variedad = str_squish(str_to_upper( gsub(',', '\\.', variedad)))) %>% 
  arrange(variedad) %>% 
  pull(`variedad`) %>% 
  unique() 

# dat %>% group_by(variedad) %>% tally()

write_csv(dat, "clean_data.csv")
