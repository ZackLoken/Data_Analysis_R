# Exercise 1 - January 26 2022
# Zack Loken

chooseCRANmirror(ind=81)

# 1. What is the second argument in the lm() function?
      
    # The second argument in the lm() function is data which allows you to manually enter the variables in the model.
    # This was found by the statement ?lm() and then reviewing the arguments listed in the R documentation for Fitting Linear Models

?lm()



# 2. What is the second argument in the plot.gam() function found in the mgvc library? 
    
    # The second argument in the plot.gam() function is residuals; if true then partial residuals are added to plots.
    # This was found by installing the mgvc package and then typing ?plot.gam() and then reviewing the arguments listed
    # in the R documentation for Default GAM plotting

install.packages("mgcv")
library(mgcv)
?plot.gam()



# 3. What is the length of the vector created from a sequence of 3 to 27 by intervals of 0.13?
    
    # The vector length of this output is 185. 

seq(3, 27, by=0.13)



# 4. What code subsets the first row and third column of the second matrix for the array * array(seq(1:20)), dim=c(2,5,2)) *
# and what number occupies this position?

    # The code that subsets the first row and third column of the second matrix for this array is * a[1, 3, 2] *
    # and the number that occupies this position is 15.

a <- array(seq(1:20), dim=c(2,5,2))
a[1, 3, 2]



# 5. Create a list object from 3 or more built in datasets.

data(package = .packages(all.available = TRUE))
data("rivers")
data("USArrests")
data("precip")
data("rock")
ListObject <- list(rivers, USArrests, precip, rock)
str(ListObject)



# 6. What is the mean length of major North American Rivers ('rivers' built-in dataset)

    # The mean length of major North American Rivers is 591.2

data("rivers")
summary(rivers)



# 7. Write a built-in dataset to a CSV file (show code) and open it in Excel. 

data("PlantGrowth")
PlantGrowth
write.csv(PlantGrowth, "D:/Zack/School/Classes/Spring 22/OCS 7131 - Data Analysis in R/Lab/Lab 1/PlantGrowth.csv", row.names=TRUE)



# 8. Tabulate the type and concentration factors in the CO2 dataset in one table. Is this experiment balanced?

    # See code below. This experiment is balanced because there are an equal number of observations at each concentration level
    # for Quebec and Mississippi (values in the 'Type' column). 

data("CO2")
table(CO2$Type, CO2$conc)



# 9. Write a single function to subset both spray A and records of counts > 17 from 'InsectSprays'. How many records are there? 

    # There are 3 records with spray type A and count greater than 17. 

data("InsectSprays")
subset(InsectSprays, spray=='A' & count > 17, select = c(spray, count))



# 10. Create a box plot of the spray counts in 'InsectSprays'.

data("InsectSprays")
boxplot(count ~ spray, data = InsectSprays, col = "lightblue")



# Extra work: Swirl Exercises - Course 1

install.packages("swirl")
library(swirl)
swirl()
