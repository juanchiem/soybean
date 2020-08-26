
Referencias para tener en cuenta:

[Revista Horizonte
digital](https://issuu.com/horizonteadigital/docs/ha_130)

## Dataset

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

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

  - Nro de observaciones por campaña / ecoregión / regional

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

  - Cantidad de datos/faltantes por variable

| variable                   | datos | datos\_faltantes |
| :------------------------- | ----: | ---------------: |
| id\_lote                   |  2698 |                9 |
| campana                    |  2698 |                9 |
| zona                       |  2707 |                0 |
| regional                   |  2698 |                9 |
| localidad                  |  2707 |                0 |
| clase\_de\_suelo           |  2341 |              366 |
| cultivo                    |  2698 |                9 |
| superficie                 |  2698 |                9 |
| rinde                      |  2687 |               20 |
| antecesor\_invernal\_18\_1 |  2673 |               34 |
| antecesor\_estival\_17\_18 |  1712 |              995 |
| fecha\_siembra             |  2655 |               52 |
| variedad                   |  2698 |                9 |
| tecno\_herbicidas          |  2611 |               96 |
| tecno\_rr                  |  2698 |                9 |
| tecno\_sts                 |   780 |             1927 |
| GM                         |  2698 |                9 |
| semillero                  |  2698 |                9 |
| espaciamiento\_cm          |  2506 |              201 |
| densidad                   |   944 |             1763 |
| riego                      |  2684 |               23 |
| napa                       |  2698 |                9 |
| agua\_inicio               |  2594 |              113 |
| adversidad\_1              |  2706 |                1 |
| dano\_1                    |  2572 |              135 |
| adversidad\_2              |     0 |             2707 |
| dano\_2                    |  2681 |               26 |
| dano\_tot                  |  2568 |              139 |

## Distribución de variedades: superficie (tamaño de cuadrados) y rendimientos (intensidad de color) por GM

![](README_files/figure-gfm/unnamed-chunk-8-1.png)<!-- -->

![](README_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

## Fecha de siembra x GM

  - Evolución de fecha de siembra por zona

![](README_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

## Fecha de siembra x rinde

  - Rendimientos por fecha de siembra x zona

![](README_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->

> Obs: elimine siembras de soja 2° anteriores al 1/12. Algo similar
> habria que hacer respecto a las soja 1°: eliminar siembras posteriores
> a 15/12?

  - Tomar las 5 variedades mas sembradas de cada GM y ver distribucion
    de rendimientos (por zona, para no meter ruido del potencial de las
    mismas??

## Variedades

### Soja 1°

![](README_files/figure-gfm/unnamed-chunk-14-1.png)<!-- -->

### Soja 2°

![](README_files/figure-gfm/unnamed-chunk-15-1.png)<!-- -->

  - Evolución de uso de biotecnologia por campaña

![](README_files/figure-gfm/unnamed-chunk-16-1.png)<!-- -->

![](README_files/figure-gfm/unnamed-chunk-17-1.png)<!-- -->

    #> $colour
    #> [1] "ona"
    #> 
    #> attr(,"class")
    #> [1] "guides"

> esta raro esto

  - Efecto napa y agua a la siembra por año y por zona

  - Arbol de regresion para rendimiento: que variables explican cada
    rango de rendimiento??
