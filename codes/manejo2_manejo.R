cs_bar17 <- cs_bar %>% filter(campana == "2017/18")

tmp.ccc <- epi.ccc(cs_bar17$rendimiento_antecesor_cs_qq_ha,
                   cs_bar17$rendimiento_antecesor_barbecho_qq_ha,
                   ci = "z-transform", conf.level = 0.95,
                   rep.measure = FALSE)

tmp.lab <- data.frame(lab = paste("CCC: ",
                                  round(tmp.ccc$rho.c[,1], digits = 2), " (95% CI ",
                                  round(tmp.ccc$rho.c[,2], digits = 2), " - ",
                                  round(tmp.ccc$rho.c[,3], digits = 2), ")", sep = ""))

z <- lm(cs_bar17$rendimiento_antecesor_cs_qq_ha~cs_bar17$rendimiento_antecesor_barbecho_qq_ha)
alpha <- summary(z)$coefficients[1,1]
beta <-  summary(z)$coefficients[2,1]
tmp.lm <- data.frame(alpha, beta)

ggplot(cs_bar17, aes(x=rendimiento_antecesor_cs_qq_ha,
                     y=rendimiento_antecesor_barbecho_qq_ha)) +
  geom_point() +
  geom_abline(intercept = 0, slope = 1) +
  geom_abline(data = tmp.lm, aes(intercept = alpha, slope = beta),
              linetype = "dashed") +
  xlim(0, 3) +
  ylim(0, 3) +
  xlab("Method 1") +
  ylab("Method 2") +
  geom_text(data = tmp.lab, x = 0.5, y = 2.95, label = tmp.lab$lab) +
  coord_fixed(ratio = 1 / 1)


```{r}
library(segmented)

fosf1 <- 
  fosf %>% 
  drop_na(p_bray_ppm) %>% 
  dplyr::filter(
    dosis_kg_ha<180, 
    dosis_kg_ha>10, 
    p_bray_ppm<60, 
    p_bray_ppm>5, 
    rendimiento_qq_ha>20,
    fertilizante == "MAP") %>% 
  arrange(p_bray_ppm)

fosf1 %>% ggplot(aes(p_bray_ppm, rendimiento_qq_ha))+
  geom_text(aes(label=p_bray_ppm))

fit <- lm(rendimiento_qq_ha ~ p_bray_ppm, 
          data =fosf1)
segfit <- segmented(fit)
summary(segfit)

plot(fosf1$p_bray_ppm, fosf1$rendimiento_qq_ha)  
plot(segfit, add=TRUE)
```
rstudioapi::getSourceEditorContext()$path
