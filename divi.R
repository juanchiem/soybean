pacman::p_load(tidyverse,janitor,stringdist) 

dat <- read_excel(here::here("Planilla soja Nodo Oeste - Juanchi.xlsx"),
                  .name_repair = make_clean_names) 

glimpse(dat)

dat %>% 
  str_sub(c("Vicuña" = "V.", 
            "Montecristo" = "Monte Cristo", "Los Surgentes Inriville" = "Los Surgentes-Inriville"))

  
dat %>% 
  ggplot(aes(x=fecha_de_siembra_dia_mes, y=rendimiento_qq_ha))+
  geom_point()+
  facet_wrap("regional")

dat %>% arrange(regional) %>% 
  pull(`regional`) %>% unique() 

dat %>%
  mutate(regional = str_to_title(regional),
         regional = stringi::stri_trans_general(regional,"Latin-ASCII")) %>% 
        # regional= str_replace(regional, "Adelia (M|m)aria", "Adelia María")) %>% 
  arrange(regional) %>% 
  pull(`regional`) %>% unique() 


dat$regional <- fct_recode(dat$regional,
                           "Korea, South" = "S. Korea",
                           "United Kingdom" = "UK", 
                                           "Cruise Ship" = "Diamond Princess",
                                           "US" = "USA",
                                           "Taiwan*" = "Taiwan")
hw <- "Hadley Wickham"
str_sub(hw, 1, 6)
