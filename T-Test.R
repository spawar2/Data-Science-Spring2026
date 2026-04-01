# Author: Pawar, Date: 04/1/2026, Purpose: Test T-test

# Create 2 groups x and y
x = rnorm(10)
y = rnorm(10)


# Plot the variables x and y
pts = seq(-4.5,4.5,length=100)
plot(pts,dt(pts,df=9),col='red',type='l')
lines(density(x), col='green')
lines(density(y), col='blue')

Apply T-test funtion on x and y
ttest = t.test(x,y)

	Welch Two Sample t-test

data:  x and y
t = -1.2128, df = 16.228, p-value = 0.2426
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.8976007  0.2438275
sample estimates:
mean of x mean of y 
0.1979139 0.5248005 
