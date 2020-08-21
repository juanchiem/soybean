pacman::p_load(tidyverse,janitor) 

dat <- readxl::read_excel(here::here("Planilla soja Nodo Oeste - Juanchi.xlsx"),
                  .name_repair = make_clean_names) 

glimpse(dat)

dat %>% arrange(regional) %>% 
  pull(`regional`) %>% unique() 

dat <- dat %>%
  mutate(regional = str_to_title(regional),
         regional = stringi::stri_trans_general(regional,"Latin-ASCII"), 
         regional = recode(regional, 
                           'Vicuna Mackenna'= 'V. Mackenna',
                           Montecristo = "Monte Cristo", 
                           "Los Surgentes Inriville" = "Los Surgentes-Inriville",
                           "Los Surgentes" = "Los Surgentes-Inriville"))

dat %>% arrange(regional) %>% 
  pull(`regional`) %>% unique() 


dat %>% 
  ggplot(aes(x=fecha_de_siembra_dia_mes, y=rendimiento_qq_ha))+
  geom_point()+
  facet_wrap("regional")