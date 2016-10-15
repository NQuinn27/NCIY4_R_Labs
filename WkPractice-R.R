name = c("Jon","James","Mary")
age = c(18,24,21)
gender = c("M", "M","F")
mark = c(85.00, 95.00, 82.00)
dat = data.frame(name, age, gender, mark)

summary(dat)     #basic stats of each column

#subset the data
myDat[1,2]
#select desired columns
subset(x = dat, select = c(1,3))
subset(x = dat, select = c("name","mark"))

names(dat)
#Select Male
subset(x = dat, subset = (gender == "M"))

#view existng R datasets
mtc = mtcars
summary(mtc)
subset(x = mtc, subset = (mpg > 20))
mtcset = subset(x = mtc, subset = (mtc$mpg > 20 & mtc$cyl ==4), select = c("mpg", "cyl"))
summary(mtcset)

a<-3
a < -3

salutation <- function(name) {
  salutation = paste("Hello ", name, sep= " ")
  print(salutation)
}


##################
# Input / output
##################

myFile = file("Developer/NCI/Data Application Design/mydata.txt", open = "w")
for (i in length(dat$name)) {
  writeLines(text = paste(dat[,i]), con = myFile, sep = "\n")
}
close(myFile)

#Output tabular data
write.table(x = dat, file = "mydata_tab.txt")
write.table(x = dat, file = "mydata_csv.csv")
write.table(x = dat, file = "mydata_csv_norownumbers.csv", row.names=FALSE)

read.csv(file = "mydata_csv.csv", header = TRUE)

#plot
png(filename = "Developer/NCI/Data Application Design/mpg_hist.png", width = 3, height = 3, units = "in", res = 1)


