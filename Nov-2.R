# Author: Pawar, Date: 11/02/2022, Purpose: Calculate the Chi Square value

# Read the sample data

data_frame <- read.csv("https://goo.gl/j6lRXD")

# Look at the counts of the dataset

table(data_frame$treatment, data_frame$improvement)

# Apply the chi square test

chisq.test(data_frame$treatment, data_frame$improvement, correct=FALSE)

