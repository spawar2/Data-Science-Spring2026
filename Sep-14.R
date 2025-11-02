# Author: Pawar, Date: 08/14/2022, Purpose: Testing ANOVA function

# Reading the data
setwd("/Users/pawar/Desktop")

data <- read.csv(file = 'COVID-Data.csv', header=TRUE)

head(data)

# Apply the ANOVA function
anova_one_way <- aov(Confirmed~Deaths, data = data) 

summary(anova_one_way) 

# Post-hoc analysis!
TukeyHSD(anova_one_way)

# Function to find groups in your independent variable
levels(data$gender)






