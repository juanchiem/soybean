theme_aapre <- theme_bw(base_size = 12) + 
  theme(
    axis.text.x = element_text(angle = 60, hjust = 1), 
    legend.position = "top", legend.justification = "right",
    plot.title = element_text(family = 'Helvetica', 
                              face = 'bold', 
                              hjust = 0, 
                              vjust = 0
    ))

theme_dens <- theme_bw(base_size = 12) + 
  theme(
    legend.position = "top", legend.justification = "right",
    plot.title = element_text(family = 'Helvetica', 
                              face = 'bold', 
                              hjust = 0, 
                              vjust = -7),
    axis.text.x = element_text(hjust = -0.1))        


theme_dens1 <- theme_bw(base_size = 12) + 
  theme(
    legend.position = "top", legend.justification = "right",
    plot.title = element_text(family = 'Helvetica', 
                              face = 'bold', 
                              hjust = 0, 
                              vjust = -7),
    axis.text.x = element_text(angle = 60, hjust = 1)) 