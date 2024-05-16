load("/Users/hanwenzhang/Dropbox/github/tidywayuu/cnpv2018_guajira_unida.RData")

table(exportar$U_DPTO)
table(exportar$U_MPIO)

library(tidyverse)
wayuu <- exportar %>% 
  mutate(Municipio = case_when(U_MPIO==1 ~ "Riohacha",
                            U_MPIO==430 ~ "Maicao",
                            U_MPIO==560 ~ "Manaure",
                            U_MPIO==847  ~ "Uribia")) %>%
  relocate(Municipio) %>%
  select(-acueducto, -alcantarillado)
