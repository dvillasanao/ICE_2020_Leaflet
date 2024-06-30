# Librerías
require(openxlsx)
require(dplyr)

# Base a nivel municipal
ICE_2020 <- read.xlsx(paste0(here::here(), "/Municipio/Data/Indice de calidad del entorno a nivel municipal.xlsx"), sheet = "ICE_2020") %>%
             select(CVE_MUN, NOM_ENT, NOM_MUN, POBTOT, IM_2020, GM_2020, IAL, GACC, IE, G_IE, ICE, G_ICE) %>%
             mutate(across(.cols = c(5, 7, 9, 11), ~formatC(.x, digits = 2,  format = "f"))) 

save(ICE_2020, file = paste0(here::here(), "/Municipio/Output/ICE_2020.RData"))

