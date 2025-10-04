# In-class R activity 

# This command pulls a dataset in R format from an online source.
source("http://www.openintro.org/stat/data/arbuthnot.R")

#This command is used to view the entire content of the dataset.
View(arbuthnot)

# Shows the dimensions of the dataset i.e. number of observations (rows) and 
# number of variables (columns)
dim(arbuthnot)

# Shows the names of the variables in the dataset.
names(arbuthnot)

# View the top rows of the dataset
head(arbuthnot)

# View the bottom rows of the dataset
tail(arbuthnot)

# Extracting all of the data for the variable "boys" in the dataset.
arbuthnot$boys

# Attach the dataset to the environment. This way, you don't have to 
# type the name of the dataset when you are working with the variables 
# within
attach(arbuthnot)

# Calling the variables boys/girls/year will show all values for that variable
boys
girls
year

# Subsetting the dataset to look at specific columns
arbuthnot[1]
arbuthnot[2]

# Show the observation in row 1, column 1.
arbuthnot [1,1]

# Show the entire third row of the dataset 
arbuthnot[3 ,]

# Show the mini-dataset in rows 3 to 7 and columns 2 to 3.
arbuthnot [3:7, 2:3]

# Create a dotplot with year on the x-axis and girls on the y-axis.
plot (x=year, y=girls)

# If you get an error message about the margins, 
# you may use this "par(mar=c(1,1,1,1))" command 
# to reset the margin size. 

# Create a plot with lines connecting each data value
plot (x=year, y=girls, type = "l")

# Use R as a calculator to add together variables (girls + boys) 
# when creating a plot.
plot (x=year, y=girls + boys, type = "l")

# Create a new variable that represents the total. 
# The assignment operator "<-" looks like a back arrow.
total <- girls + boys

# To display the newly created variable total 
total

# Create a new variable for shows the proportion of girls 
# for a given year.
propgirls<- girls/total

#Let's now plot the proportion of girls for each year.
plot (x=year, y=propgirls, type = "l")

