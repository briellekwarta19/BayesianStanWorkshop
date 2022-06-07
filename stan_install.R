# #Installing stan:
# install.packages("rstan", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))
# 
# #Configuring C++ Toolchain
# #To be on the safe side, it is sometimes necessary to remove any existing RStan via
# remove.packages("rstan")
# if (file.exists(".RData")) file.remove(".RData")
# Sys.getenv("BINPREF")
# 
# #Then, restart R
# 
# #For windows:
# Sys.setenv(DOWNLOAD_STATIC_LIBV8 = 1) # only necessary for Linux without the nodejs library / headers
# install.packages("rstan", repos = "https://cloud.r-project.org/", dependencies = TRUE)
# 
# #Verifying installation
# library(rstan)
# example(stan_model, package = "rstan", run.dontrun = TRUE)
# 
# #if error:
# # Compile packages using all cores
# Sys.setenv(MAKEFLAGS = paste0("-j",parallel::detectCores()))
# install.packages(c("StanHeaders","rstan"),type="source")

#with rools 42
remove.packages(c("StanHeaders", "rstan"))

install.packages("rstan", repos = c("https://mc-stan.org/r-packages/", getOption("repos")))

#Verifying installation
library(rstan)
example(stan_model, package = "rstan", run.dontrun = TRUE)


install.packages("here")

install.packages("tidybayes")

install.packages("gapminder")

install.packages("rstanarm")
