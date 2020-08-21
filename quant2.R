
# http://rstudio-pubs-static.s3.amazonaws.com/10676_3076247aa63042bfbab16869d688db42.html

# https://mfasiolo.github.io/qgam/articles/qgam.html 

library(tidyverse)

ggplot(mtcars, aes(x = mpg, y = hp)) + 
  geom_point()+
  geom_quantile(quantiles = c(0.25,0.75))


pacman::p_load(qgam,MASS)
if( suppressWarnings(require(RhpcBLASctl)) ){ blas_set_num_threads(1) } # Optional

fit <- qgam(accel~s(times, k=20, bs="ad"), 
            data = mcycle, 
            qu = 0.8)

# Plot the fit
xSeq <- data.frame(cbind("accel" = rep(0, 1e3), "times" = seq(2, 58, length.out = 1e3)))
pred <- predict(fit, newdata = xSeq, se=TRUE)
plot(mcycle$times, mcycle$accel, xlab = "Times", ylab = "Acceleration", ylim = c(-150, 80))
lines(xSeq$times, pred$fit, lwd = 1)
lines(xSeq$times, pred$fit + 2*pred$se.fit, lwd = 1, col = 2)
lines(xSeq$times, pred$fit - 2*pred$se.fit, lwd = 1, col = 2) 
