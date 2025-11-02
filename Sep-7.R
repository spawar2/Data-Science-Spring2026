# Author: Pawar, Date: 09/01/22, Purpose: Calculate correlation analysis

# Reading the data from csv file
setwd("/Users/pawar/Desktop")

data <- read.csv(file = 'COVID-Data.csv', header=TRUE)

head(data)

# Correlation analysis between confirmed cases and number of deaths
# Check if there is any relationship between number of deaths and confirmed cases

res <- cor.test(data$Confirmed, data$Deaths, method = "pearson"); 
res

#1,2,3,4,5 : "Spearman"

ggscatter(data, x = "Confirmed", y = "Deaths", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson")







