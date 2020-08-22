
<!-- README.md is generated from README.Rmd. Please edit that file -->

## Dataset

    #> Rows: 2,514
    #> Columns: 20
    #> $ campana                 <chr> "2018/19", "2018/19", "2018/19", "2018/19", "…
    #> $ zona                    <dbl> 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 4, 4, 4, 4, 5, …
    #> $ regional                <chr> "Adelia Maria", "Adelia Maria", "Adelia Maria…
    #> $ localidad               <chr> "Adelia María", "Adelia María", "Adelia María…
    #> $ clase_de_suelo          <chr> "Sin dato", "Sin dato", "Sin dato", "Sin dato…
    #> $ cultivo                 <chr> "Soja 1°", "Soja 1°", "Soja 1°", "Soja 2°", "…
    #> $ rinde                   <dbl> 42, 37, 34, 27, 46, 31, 50, 49, 36, 39, 39, 3…
    #> $ antecesor_invernal_18_1 <chr> "Barbecho", "Barbecho", "Barbecho", "Trigo co…
    #> $ antecesor_estival_17_18 <chr> "Soja", "Soja", "Soja", NA, "Maíz", "Maíz", "…
    #> $ fecha_siembra           <date> 2018-11-22, 2018-11-19, 2018-11-18, 2018-12-…
    #> $ variedad                <chr> "FN 4.97", "FN 4.97", "NA 5009", "NA 5019", "…
    #> $ grupo_de_madurez        <chr> "IV", "IV", "V", "V", "V", "IV", "IV", "IV", …
    #> $ espaciamiento_cm        <dbl> 42, 42, 42, 42, 26, 26, 42, 38, 52, 35, 26, 2…
    #> $ densidad                <lgl> NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, N…
    #> $ riego                   <chr> "No", "No", "No", "No", "No", "No", "No", "No…
    #> $ napa                    <chr> "Sin influencia", "Sin influencia", "Sin infl…
    #> $ adversidad_1            <chr> "Sin adversidad", "Granizo", "Sin adversidad"…
    #> $ dano_1                  <dbl> 0, 35, 0, 0, 0, 15, 0, 0, 10, 0, 0, 0, 0, 0, …
    #> $ adversidad_2            <chr> "Sin adversidad", "Sin adversidad", "Sin adve…
    #> $ dano_2                  <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, …

### Cantidad de datos faltantes por variable:

| campana | zona | regional | localidad | clase\_de\_suelo | cultivo | rinde | antecesor\_invernal\_18\_1 | antecesor\_estival\_17\_18 | fecha\_siembra | variedad | grupo\_de\_madurez | espaciamiento\_cm | densidad | riego | napa | adversidad\_1 | dano\_1 | adversidad\_2 | dano\_2 |
| ------: | ---: | -------: | --------: | ---------------: | ------: | ----: | -------------------------: | -------------------------: | -------------: | -------: | -----------------: | ----------------: | -------: | ----: | ---: | ------------: | ------: | ------------: | ------: |
|       0 |    0 |        0 |         0 |                0 |       0 |     0 |                          9 |                       1011 |             39 |        1 |                  4 |                 5 |     1581 |    14 |    0 |             2 |       0 |           990 |       0 |

## Fecha de siembra

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

## Variedades

    #>   [1] "0"                 "4500"              "4619"             
    #>   [4] "47MS01"            "50MS01"            "50MS01 STS"       
    #>   [7] "53 MS 01 IPRO"     "53MS01 IPRO"       "59MS01 IPRO"      
    #>  [10] "60MS01"            "60MS01 STS"        "66MS01"           
    #>  [13] "A 4500"            "ACA3535"           "AW 4326"          
    #>  [16] "AW 4326 IPRO"      "AW 4500"           "AW 4736"          
    #>  [19] "AW 4736 IPRO"      "AW 4927"           "AW 4927 IPRO"     
    #>  [22] "AW 5419 IPRO"      "AW 5714"           "AW 5815"          
    #>  [25] "AW 5815 IPRO"      "AW 6210 IPRO"      "AW 6211"          
    #>  [28] "AW 6211 IPRO"      "AW 6410 IPRO"      "AW CN4612"        
    #>  [31] "AW CN4812"         "BIO 3.41"          "BIO 4.11"         
    #>  [34] "BIO 4.51"          "BIO 4.6"           "BIO 4.90"         
    #>  [37] "BIO 4.91"          "BIO 5.4"           "BIO HB4"          
    #>  [40] "CZ 3906 IPRO STS"  "CZ 4.55"           "CZ 4.97"          
    #>  [43] "CZ 4306"           "CZ 4505"           "CZ 4606"          
    #>  [46] "CZ 5107"           "CZ 5407 IPRO"      "CZ 5907 IPRO"     
    #>  [49] "CZ 6205"           "CZ 6505"           "CZ4505"           
    #>  [52] "DM 3312"           "DM 3810"           "DM 3815"          
    #>  [55] "DM 3815 IPRO"      "DM 3815 IPRO STS"  "DM 40R16"         
    #>  [58] "DM 4210"           "DM 4212"           "DM 4212 STS"      
    #>  [61] "DM 4413"           "DM 4612"           "DM 4613"          
    #>  [64] "DM 4614"           "DM 4615"           "DM 4615 STS"      
    #>  [67] "DM 4615¿"          "DM 4616"           "DM 4618"          
    #>  [70] "DM 4619"           "DM 4620"           "DM 4621"          
    #>  [73] "DM 4622"           "DM 46I17"          "DM 46I17 IPRO"    
    #>  [76] "DM 46R18"          "DM 4712"           "DM 47I17"         
    #>  [79] "DM 4913"           "DM 4915"           "DM 4915 IPRO"     
    #>  [82] "DM 4919"           "DM 49R19"          "DM 5.9"           
    #>  [85] "DM 5010"           "DM 50I17"          "DM 50I17 STS"     
    #>  [88] "DM 50R18"          "DM 5258"           "DM 52R19"         
    #>  [91] "DM 5351"           "DM 53I53"          "DM 55R20"         
    #>  [94] "DM 5958"           "DM 5958 IPRO"      "DM 6.2"           
    #>  [97] "DM 60I62"          "DM 62R62"          "DM 62R63"         
    #> [100] "DM 63I64"          "DM3312"            "DM4612"           
    #> [103] "DM50I17"           "DOW 1505"          "DS 1470"          
    #> [106] "EXPERIMENTAL"      "FN 4.35"           "FN 4.5"           
    #> [109] "FN 4.97"           "FN 5.55"           "FN 625"           
    #> [112] "H 4919"            "H 5310"            "HO 5010"          
    #> [115] "HO 5310"           "INTA"              "K 5102"           
    #> [118] "K 6000"            "K 6501"            "K 6970"           
    #> [121] "LD 5.3"            "LDC 4.7"           "LDC 5.3"          
    #> [124] "LDC 5.9"           "MEZCLA"            "MS 4.4 IPRO STS"  
    #> [127] "N 3988"            "N 4212"            "N 4309"           
    #> [130] "N 4612"            "N 4615"            "N 4618"           
    #> [133] "N 4619"            "N 4619 IPRO"       "N 4955"           
    #> [136] "N 5009"            "N 5019"            "N 5019 IPRO"      
    #> [139] "N 5028"            "N 5030"            "N 5208"           
    #> [142] "N 5258"            "N 5259"            "N 5419"           
    #> [145] "N 6859"            "N5009"             "NA 4309"          
    #> [148] "NA 4613"           "NA 4619I"          "NA 4955"          
    #> [151] "NA 4990"           "NA 5009"           "NA 5019"          
    #> [154] "NA 5258"           "ND 4955"           "NS 4309"          
    #> [157] "NS 4611"           "NS 4611 STS"       "NS 4903"          
    #> [160] "NS 4955"           "NS 5009"           "NS 5028"          
    #> [163] "NS 5258"           "NS4309"            "OTRO"             
    #> [166] "RA 549 RR1"        "RSM 3988"          "SOJA K 4001 NO RR"
    #> [169] "SOJA K 4616 NO RR" "SOJA K 6000 NO RR" "SOJA K 6501"      
    #> [172] "SPS 4X4"           "SPS 5X1"           "SPS4X4"           
    #> [175] "SRM 3988"          "SRM 4602 STS"      "SY 4X4"           
    #> [178] "SY 5X1"            "SY 5X2"            "SYN 3X7"          
    #> [181] "SYN 4X4"           "SYN 5X1"           "VARIAS"           
    #> [184] NA
