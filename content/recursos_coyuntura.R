

library(tidyverse)

data.frame(
  recurso = c("imet_ene2022",
              "imet_feb2022",
              "imet_mar2022",
              "imet_abr2022",
              "imet_may2022",
              "imet_jun2022",
              "panorama_may2022",
              "panorama_jun2022",
              "imet_jul2022",
              "imet_ago2022"),
  src = c("img/imet.png",
          "img/imet.png",
          "img/imet.png",
          "img/imet.png",
          "img/imet.png",
          "img/imet.png",
          "img/panorama.png",
          "img/panorama.png",
          "img/imet.png",
          "img/imet.png"),
  url = c("https://tableros.yvera.tur.ar/recursos/biblioteca/imet_enero.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_febrero.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_marzo.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_abril.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_mayo.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/imet_junio.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/panorama_mayo.pdf",
          "https://tableros.yvera.tur.ar/recursos/biblioteca/panorama_junio.pdf",
          "https://tableros.yvera.tur.ar/institucional/imet/imet_julio_final.pdf",
          "https://tableros.yvera.tur.ar/institucional/imet/imet_agosto_2022.pdf"),
  description  = c("Evolución de los principales indicadoresde la actividad turística (ENERO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (FEBRERO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (MARZO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (ABRIL 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (MAYO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (JUNIO 2022)",
                   "Panorama económico del Turismo en Argentina (MAYO 2022)",
                   "Panorama económico del Turismo en Argentina (JUNIO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (JULIO 2022)",
                   "Evolución de los principales indicadoresde la actividad turística (AGOSTO 2022)"),
  tags = c("Estadísticas Turísticas", "Estadísticas Turísticas", "Estadísticas Turísticas", "Estadísticas Turísticas",
           "Estadísticas Turísticas", "Estadísticas Turísticas", "Economía del Turismo" ,
           "Economía del Turismo", "Estadísticas Turísticas", "Estadísticas Turísticas"),
  fecha = c("01/2022","02/2022","03/2022","04/2022","05/2022","06/2022","05/2022","06/2022", "07/2022", "08/2022")
) %>%
  as_tibble() %>%
  mutate(fecha = lubridate::my(fecha)) %>%
  arrange(desc(fecha)) %>%
  write_csv(here::here("content", "recursos_coyuntura.csv"))
