# Setup should be used as a config file for all packages, special constants and variables used 

# Clears global environment to remove any possible conflicts in dependencies, etc.
rm(list = ls())

# Packages installed and used
packagesInstalled <- c("shiny","easypackages") # use this to specify the packages to install
install.packages(packagesInstalled)
update.packages(packagesInstalled)
library(easypackages) # use this to load + managed multiple packages easily
packagesUsed <- c("shiny") # use this to specify the packages to load
libraries(packagesUsed)

# Special constants

# Special variables
