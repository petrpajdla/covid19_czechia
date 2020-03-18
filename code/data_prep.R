library(tidyverse)

# create directory for data download
dir.create("./data/raw", recursive = TRUE)

# urls to zips of csv files with desired information from api.worldbank.org
url_pop_density <- "api.worldbank.org/v2/en/indicator/EN.POP.DNST?downloadformat=csv"
url_pop_urban <- "api.worldbank.org/v2/en/indicator/SP.URB.TOTL.IN.ZS?downloadformat=csv"

# url to github of John Hopkins CSSE updating data daily
# better solution is to clone the repo using git clone and then pull daily (see bash script ./clone_covid19.sh)
# url_covid19 <- "https://github.com/CSSEGISandData/COVID-19/archive/master.zip"

# download files
download.file(url_pop_density, "./data/raw/pop_density")
download.file(url_pop_urban, "./data/raw/pop_urban")
# download.file(url_covid19, "./data/raw/covid19")

# unzip files
unzip("./data/raw/pop_density", exdir = "./data/")
unzip("./data/raw/pop_urban", exdir = "./data/")
# unzip("./data/raw/covid19", exdir = "./data/COVID-19/")

