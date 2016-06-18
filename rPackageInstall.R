ps <- c('Rcpp', 'network', 'sna', 'qdap', 'twitteR', 'dplyr', 'shiny', 'ggplot2', 'lubridate', 'tm', 'flexdashboard')
lapply(ps, install.packages, repos = 'http://cran.r-project.org/')
