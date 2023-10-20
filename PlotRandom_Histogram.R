#* PlotRandom_Histogram.R 
#* 
#* Author: Chris Reynolds
#* 
#* Purpose: A function that will
#*  generate a random sample of 
#*  normal observations and plot
#*  a histogram of the data. 
#*  
#*  Inputs: 
#*    num_pts = the number of observations to generate
#*    mu= the theoretical mean of the NORMAL
#*    sigma= the theoretical sd of NORMAL
#*    seed= a random number generation seed, 
#*    to ensure reproducible
#* 
#*  Outputs : 
#*    A plot of the histogram is provided,
#*    A list with he following elements
#*    Random_values = vector with the generated random values
#*    Mean_random_Values= corresponding sample mean
#*    SD_random_values = SD corresponding values 
#*    
#* 
#* 
plotRandom_Histogram <- function(num_pts=30, mu=0, sigma=1, seed=NULL, meanColor= "royalblue") {
  set.seed(seed)
  x <- rnorm( n=num_pts, mean=mu, sd=sigma)
  mean_x <- mean(x)
  hist(x)
  abline(v=mean_x,col=meanColor,lwd=5)
  ### Last line of code in function is output
  list(RandomValue = x,
       mean_random_value = mean_x,
       SD_random_Values = sd(x))
  }
plotRandom_Histogram(seed=1)
plotRandom_Histogram(seed=1, num_pts = 1000000)
