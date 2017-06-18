#HW11

#Be creative! Write a script "PlotName_FirstName_LastName.R" 
#to make a plot of your choice using R base graphics. Use DemData_clean.txt
#dataset: https://www.dropbox.com/s/d9gwtrg060qpqcd/DemData_clean.txt?dl=0
#Subset DemData_clean.txt in whatever way necessary to make a plot you want.
#You can take a small part of the data or all of it. All data manipulation
#should be recorded within the script and your plot should be saved to file
#(see http://www.statmethods.net/graphs/creating.html for different formats under
#Saving Graphs section)
#Here are some graph types to explore: http://www.statmethods.net/graphs/index.html
#If you really want to make something using functions outside base packages,
#make sure to include package installation in your script.
#Provide comments for every line of code.
#Your graphs should be explanatory - ready to be submitted for publication.
#See IrisPlot.R for example of a script

#Note1: no scatterplots as base graphs are allowed. Make something new!
#Note2: I will share your code with everyone in class. This way you will have a
#library of scripts with different plots to model your future work on.
#Note3: First ask a question about some features of the dataset, then figure out
#how to visulize the answer.

############## SCRIPT OUTLINE ##############


###install packages and load libraries (see IrisPlot.R for proper code)
# Plot iris data
library(RColorBrewer)

###read in data (read DemData_clean.txt into R)
idata<-iris

###manipulate data
virginica <- idata[idata$Species=="virginica",]
versicolor <- idata[idata$Species=="versicolor",]
setosa <- idata[idata$Species=="setosa",]

###open graphics device
png("Iris.png")

###make base plot with high-level function
plot(density(virginica$Sepal.Length*virginica$Sepal.Width/virginica$Petal.Length*virginica$Petal.Width), col="blue",main="")

###use low-level functions to add to plot
lines(density(versicolor$Sepal.Length*versicolor$Sepal.Width/versicolor$Petal.Length*versicolor$Petal.Width), col="red")
lines(density(setosa$Sepal.Length*setosa$Sepal.Width/setosa$Petal.Length*setosa$Petal.Width), col="green")
title(main="Sepal area vs Petal Area \n in Iris Dataset")
legend(10.5, 0.2, c("virginica", "versicolor", "setosa"), c("blue", "red", "green"),pt.cex = 1,cex=.8)

###close graphics device
dev.off()
################### END OF SCRIPT ##############


