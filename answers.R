# Question 1
#Authentication doesn't work
# gotTo: https://api.github.com/users/jtleek/repos
# Search for "datasharing"
# createdAt attribute


# Question 2
#library(sqldf)
#acs <- read.csv("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv")

#print(head(sqldf("select pwgtp1 from acs where AGEP < 50")))

# Question 3
#print(unique(acs$AGEP))
#print(sqldf("select distinct AGEP from acs"))

# Question 4
page <- readLines("http://biostat.jhsph.edu/~jleek/contact.html")
print(c(nchar(page[10]), nchar(page[20]), nchar(page[30]), nchar(page[100])))

# Question 5
library(utils)
fwf <-
  read.fwf(
    "https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for",
    skip = 4,
    widths = c(-1, 9, -5, 4, -1, 3, -5, 4, -1, 3, -5, 4, -1, 3, -5, 4, -1, 3),
    col.names = c(
      "Week",
      "Nino1-2_SST",
      "Nino1-2_SSTA",
      "Nino3_SST",
      "Nino3_SSTA",
      "Nino34_SST",
      "Nino34_SSTA",
      "Nino4_SST",
      "Nino4_SSTA"
    )
  )
print(sum(as.numeric(fwf[,4])))