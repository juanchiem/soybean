
-----

## Dataset

``` r
glimpse(dat)
#> Rows: 2,707
#> Columns: 28
#> $ id_lote                 <dbl> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14…
#> $ campana                 <chr> "2017/18", "2017/18", "2017/18", "2017/18", "…
#> $ zona                    <fct> 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, …
#> $ regional                <chr> "Alta Gracia", "Alta Gracia", "Alta Gracia", …
#> $ localidad               <list> [0, 0, 0, 0, 0, 0, 0, 0, "Villa del Rosario"…
#> $ clase_de_suelo          <chr> "III", "III", "III", "III", "III", "III", "II…
#> $ cultivo                 <chr> "soja_1", "soja_1", "soja_1", "soja_1", "soja…
#> $ superficie              <dbl> 13.71, 14.50, 15.87, 80.00, 100.00, 101.70, 1…
#> $ rinde                   <dbl> 4.50, 3.50, 3.90, 34.00, 37.00, 2.70, 2.80, 3…
#> $ antecesor_invernal_18_1 <list> [NULL, NULL, NULL, NULL, NULL, NULL, NULL, N…
#> $ antecesor_estival_17_18 <chr> "Maíz", "Maíz", "Maíz", "Maíz", "Maíz", "Maíz…
#> $ fecha_siembra           <date> 2018-12-15, 2018-12-15, 2018-12-15, 2018-12-…
#> $ variedad                <chr> "DM50I19", "DM50I17", "DM50I17", "DM5258", "D…
#> $ tecno_herbicidas        <chr> "IPRO", "IPRO", "IPRO", "RR1", "IPRO", "IPRO"…
#> $ tecno_rr                <chr> "RR2", "RR2", "RR2", "RR1", "RR2", "RR2", "RR…
#> $ tecno_sts               <chr> NA, NA, NA, NA, NA, NA, NA, NA, NA, "STS", NA…
#> $ GM                      <chr> "V", "V", "V", "V", "V", "V", "V", "V", "V", …
#> $ semillero               <chr> "Don Mario", "Don Mario", "Don Mario", "Don M…
#> $ espaciamiento_cm        <dbl> 52, 52, 52, 52, 52, 42, 42, 52, 42, 52, 52, N…
#> $ densidad                <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N…
#> $ riego                   <chr> "NO", "NO", "NO", "NO", "NO", "NO", "NO", "NO…
#> $ napa                    <chr> "Con influencia", "Con influencia", "Con infl…
#> $ agua_inicio             <chr> "Seco", "Seco", "Seco", "Seco", "Seco", "Seco…
#> $ adversidad_1            <list> [0, 0, 0, 0, 0, 0, 0, 0, "Sequía", "Sequía",…
#> $ dano_1                  <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, …
#> $ adversidad_2            <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N…
#> $ dano_2                  <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, …
#> $ dano_tot                <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, …
```

(carpeta de
imagenes)\[<https://github.com/juanchiem/soybean/tree/master/plots>\]

# Superficies

## Lote medio de cada zona (2017-2020)

``` r
knitr::include_graphics(here::here("plots","lote_tipico_zona1.png"))
```

<img src="/home/juan/Documents/soybean/plots/lote_tipico_zona1.png" width="1200" />

``` r

knitr::include_graphics(here::here("plots", "lote_tipico_zona2.png"))
```

<img src="/home/juan/Documents/soybean/plots/lote_tipico_zona2.png" width="1200" />

``` r

knitr::include_graphics(here::here("plots", "lote_tipico_zona3.png"))
```

<img src="/home/juan/Documents/soybean/plots/lote_tipico_zona3.png" width="1200" />

``` r

knitr::include_graphics(here::here("plots", "lote_tipico_zona4.png"))
```

<img src="/home/juan/Documents/soybean/plots/lote_tipico_zona4.png" width="1200" />

``` r

knitr::include_graphics(here::here("plots", "lote_tipico_zona5.png"))
```

<img src="/home/juan/Documents/soybean/plots/lote_tipico_zona5.png" width="1200" />

## Superficie por zona / regional / campaña

``` r
knitr::include_graphics(here::here("plots", "sup_campana_zona.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_campana_zona.png" width="2100" />

## Area de siembra de GM por zona y tipo de cultivo de soja

``` r
knitr::include_graphics(here::here("plots", "tortas_soja_GM.png"))
```

<img src="/home/juan/Documents/soybean/plots/tortas_soja_GM.png" width="2100" />

``` r
knitr::include_graphics(here::here("plots", "sup_sj.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_sj.png" width="2952" />

``` r
knitr::include_graphics(here::here("plots", "sup_sj1.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_sj1.png" width="2952" />

``` r
knitr::include_graphics(here::here("plots", "sup_sj1_GM3.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_sj1_GM3.png" width="1771" />

``` r
knitr::include_graphics(here::here("plots", "sup_sj1_GM4.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_sj1_GM4.png" width="1771" />

``` r
knitr::include_graphics(here::here("plots", "sup_sj1_GM5.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_sj1_GM5.png" width="1771" />

``` r
knitr::include_graphics(here::here("plots", "sup_sj1_GM6.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_sj1_GM6.png" width="1771" />

``` r
knitr::include_graphics(here::here("plots", "sup_sj2.png"))
```

<img src="/home/juan/Documents/soybean/plots/sup_sj2.png" width="2952" />

# Manejo

## Ventanas de siembra por zona / GM

``` r
knitr::include_graphics(here::here("plots", "ventanas_siembra_campana.png"))
```

<img src="/home/juan/Documents/soybean/plots/ventanas_siembra_campana.png" width="1650" />

### Soja 1°

``` r
knitr::include_graphics(here::here("plots", "ventanas_siembra_sj1_GM.png"))
```

<img src="/home/juan/Documents/soybean/plots/ventanas_siembra_sj1_GM.png" width="1650" />

``` r
knitr::include_graphics(here::here("plots", "ventanas_siembra_sj1_GM_campana.png"))
```

<img src="/home/juan/Documents/soybean/plots/ventanas_siembra_sj1_GM_campana.png" width="1650" />

### Soja 2°

``` r
knitr::include_graphics(here::here("plots", "ventanas_siembra_sj2.png"))
```

<img src="/home/juan/Documents/soybean/plots/ventanas_siembra_sj2.png" width="1650" />

## Rendimientos por fecha de siembra x zona

(El suavizado de la tendencia esta hecho con modelo polinomial de grado
2, o sea que puede ser lineal o cuadratico el ajuste)

### Soja 1°

<img src="/home/juan/Documents/soybean/plots/rinde_Fsiembra_sj1.png" width="1650" />

### Soja 2°

``` r
knitr::include_graphics(here::here("plots", "rinde_Fsiembra_sj2.png"))
```

<img src="/home/juan/Documents/soybean/plots/rinde_Fsiembra_sj2.png" width="1650" />

## Efecto Antecesor

### Con efecto napa

``` r
knitr::include_graphics(here::here("plots", "efecto_antecesor_napa.png"))
```

<img src="/home/juan/Documents/soybean/plots/efecto_antecesor_napa.png" width="1650" />

### Sin efecto napa

``` r
knitr::include_graphics(here::here("plots", "efecto_antecesor.png"))
```

<img src="/home/juan/Documents/soybean/plots/efecto_antecesor.png" width="1650" />

# Variedades

## Potencial ambiente

``` r
knitr::include_graphics(here::here("plots", "potencial_ambiente.png"))
```

<img src="/home/juan/Documents/soybean/plots/potencial_ambiente.png" width="1650" />
