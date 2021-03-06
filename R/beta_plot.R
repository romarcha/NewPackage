#' @import ggplot2
#' @export

beta_plot <- function(n = 10000, a = 1, b = 3) {
  # draw distributions
  sims <- rbeta(n = n, shape1 = a, shape2 = b)

  # convert to data frame for ggplot2 compatability
  sims <- data.frame(x = sims)

  # plot probability density function
  ggplot(sims, aes(x)) +
    geom_density() +
    xlab("") + ylab("Probability Density Function") +
    theme_bw()
}

#' @export

gaussian_plot <- function(n = 10000, mean = 0, sd = 2){
  # draw distributions
  sims <- rnorm(n = n, mean = mean, sd = sd)

  # convert to data frame for ggplot2 compatability
  sims <- data.frame(x = sims)

  # plot probability density function
  ggplot(sims, aes(x)) +
    geom_density() +
    xlab("") + ylab("Probability Density Function") +
    theme_bw()
}
