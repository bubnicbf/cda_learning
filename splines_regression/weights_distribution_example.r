library(tidyverse)

# test function
f <- function(x){
  f_x <- 0.2*x^10*(10*(1-x))^7+10*(10*x)^3*(1-x)^11
  return(f_x)
}

# plot
values <- data_frame(
  x = seq(from=0, to=1, length=500),
  f_x = f(x),
  eps = rnorm(n=500, mean=0, sd=2),
  y = f_x + eps
)

values %>%
  ggplot(aes(x=x)) +
  # stat_function(fun=f) +
  geom_point(aes(y=y))

#smoothing splines
smooth.spline(values$x, values$y, df=10) %>%
  broom::augment() %>%
  ggplot(aes(x=x)) +
  geom_point(aes(y=y)) +
  geom_line(aes(y=.fitted))



