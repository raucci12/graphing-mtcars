# Loading
data(mtcars)

# Colored Histogram with Different Number of Bins, breaks is the number of bins. 
hist(mtcars$mpg, breaks=12, col="red")


# Simple Bar Plot 
counts <- table(mtcars$gear)
barplot(counts, main="Car Distribution", 
        xlab="Number of Gears")

# Stacked Bar Plot with Colors and Legend
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts))

# Grouped Bar Plot
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)


# Boxplot of MPG by Car Cylinders 
boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", 
        xlab="Number of Cylinders", ylab="Miles Per Gallon")

# Pie plot (optional)
#Calculate the frequency of different carb values using table function
mtcarscarb = table(mtcars$carb)
#Create percent label values
percentlabels<- round(100*mtcarscarb/sum(mtcarscarb), 1)
#Create labels for each pie in the chart
pielabels<- paste(percentlabels, "%", sep="")
#R code to create the Pie Chart
pie(mtcarscarb,col = rainbow(length(mtcarscarb)), labels = pielabels , main = 'Pie Chart for MTCars distribution of Carburetors', cex = 0.8)
#Legend for the pie chart
legend("topright", c("Carburetor-1","Carburetor-2","Carburetor-3","Carburetor-4","Carburetor-6","Carburetor-8"), cex=0.6, fill=  rainbow(length(mtcarscarb)))

