# R package install script
installr <- function(vector_pkgs) {
  for (pkg in vector_pkgs) {
    cat('...... installing ', toupper(pkg),'\n\n')
    install.packages(pkg, dependencies = TRUE, repos="http://cran.rstudio.com/")
  }
}

hadly <- c('devtools',
           'testthat'
           'roxygen2',
           'dplyr',
           'ggplot2',
           'shiny',
           'tidyr')
stan <- c('rstan',
          'rstanarm',
          'loo',
          'bayesplot',
          'shinystan',
          'StanHeaders')
math <- c('deSolve')
mapping <- c('maptools',
             'rgdal',
             'USAboundaries',
             'RColorBrewer',
             'classInt')

cat('... installing R packages\n\n')
installr(c(hadly, stan, math, mapping))
cat('... end\n\n')
