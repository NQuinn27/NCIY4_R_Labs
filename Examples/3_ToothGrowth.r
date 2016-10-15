#------------------------------------------------------------
# 1) A description of the dataset and of the dataset format;
#-------------------

?ToothGrowth
# ToothGrowth - The Effect of Vitamin C on Tooth Growth in Guinea Pigs

# Description:
# The response is the length of odontoblasts (teeth) in each of 10 guinea pigs at each of three dose levels of Vitamin C (0.5, 1, and 2 mg) with each of two delivery methods (orange juice or ascorbic acid).

# Format:
# A data frame with 60 observations on 3 variables.
# [,1]   len	 numeric	Tooth length
# [,2]	 supp	 factor     Supplement type (VC or OJ).
# [,3]	 dose	 numeric	Dose in milligrams.



#------------------------------------------------------------
# 2) R code and description of at least 2 analyses on the ToothGrowth data (e.g., average, standard deviation, frequency, etc.);
#-------------------

# Minimum tooth length
minLen = min(ToothGrowth$len)
minLen
# Maximum tooth length
maxLen = max(ToothGrowth$len)
maxLen
# AverLen tooth length
avgLen = mean(ToothGrowth$len)
avgLen
# Standard deviation of tooth length
stdLen = sd(ToothGrowth$len)
stdLen



#------------------------------------------------------------
# 3) Plot the histogram of the Tooth length; 
#-------------------

png("Lab8_Histogram_Tooth_Length.png", width = 5, height = 5, units = "in", res = 300)
hist(ToothGrowth$len, breaks = 15, main = "Histogram of Tooth Length", xlab = "Tooth Length")
dev.off()



#------------------------------------------------------------
# 4) Pie chart of the percentage distribution for the Supplement type;
#-------------------

# Count the total number of observations
numObs = length(ToothGrowth$len)

# Count the number of observations for the VC and OJ supplement types
subsetVC = subset(ToothGrowth, supp == "VC")
numObsVC = length(subsetVC$supp)
subsetOJ = subset(ToothGrowth, supp == "OJ")
numObsOJ = length(subsetOJ$supp)

# Compute the percentages of observations for the VC and OJ supplement types
percObsVC = (numObsVC / numObs) * 100
percObsOJ = (numObsOJ / numObs) * 100

# Create vector of percentages
percObs = c(percObsVC, percObsOJ)
sliceNames = c("VC", "OJ")

# Create pie chart using the "pie" function
png("Lab8_Piechart_Tooth_Supplement_Percentage.png", width = 5, height = 5, units = "in", res = 300)
pie(percObs, labels = sliceNames, main = "Percentage Distribution of Supplement Types")
dev.off()



#------------------------------------------------------------
# 5) Save the dataset to a .csv output file
#-------------------

# Write data to .csv
myfile = file("Lab8_ToothGrowth.csv", open = "w")
write.csv(ToothGrowth, file = myfile, row.names = FALSE)
close(myfile)

