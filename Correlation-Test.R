# Pawar, 01/26/2026, Purpose: Perform correlation test
# Load the library ggpubr
library("ggpubr")

# Load the dummy dataset
my_data <- mtcars 

# Check the read dataset
head(my_data, 6)

# Create a scatter plot of dummy dataset
ggscatter(my_data, x = "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef = TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

Apply the correlation function
res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 
res

	Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 
