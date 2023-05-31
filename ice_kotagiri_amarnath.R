# Creating Working Dirctory 
workingdirectoryR = "F:\\MIS-PDS\\using-data-ice-AmarnathKotagiri"
setwd(workingdirectoryR)

##### Accessing Data Within R #####

# Creating DataFrame
dir=paste(workingdirectoryR,"\\data\\car.test.frame.txt",sep="")
dataframeCars = read.table(dir, header=T, sep="\t")

names(dataframeCars)
nrow(dataframeCars)
ncol(dataframeCars)

# Test your dataframe to determine which columns are categorical
str(dataframeCars)
class(dataframeCars$Type)
class(dataframeCars$Price)
class(dataframeCars$Country)
class(dataframeCars$Reliability)
class(dataframeCars$Mileage)
class(dataframeCars$Type)
class(dataframeCars$Weight)
class(dataframeCars$Disp.)
class(dataframeCars$HP)

unique(dataframeCars$Type)
unique(dataframeCars$Country)

dataframeCars[57,3]
dataframeCars[24,]

dataframeCars[29,1:3]
dataframeCars[29,c(1,2,3)]
dataframeCars[29,c("Price","Country","Reliability")]

dataframeCars[45,c(3,7)]
dataframeCars[45,c("Reliability","Disp.")]

dataframeCarsHp1=dataframeCars$HP
dataframeCarsHp2=dataframeCars[,8]



##### Sorting and Ordering Data #####

# Select compact cars that have a reliability greater than and equal to 4.
dataframeCars[dataframeCars$Reliability>='4',]

# Find compact cars that have a reliability greater than and equal to 3 from Japan, but not from the US
dataframeCars[dataframeCars$Reliability>='3' & dataframeCars$Country=='Japan',]

# How many cars are manufactured in Japan/USA?
nrow(dataframeCars[dataframeCars$Country=='Japan/USA',])

# How many cars are manufactured in the US or Japan?
nrow(dataframeCars[dataframeCars$Country=='Japan' | dataframeCars$Country=='USA',])

# How many cars are manufactured in the US or Japan with a reliability greater than and equal to 4?
nrow(dataframeCars[(dataframeCars$Country=='Japan' | dataframeCars$Country=='USA') & dataframeCars$Reliability>='4',])

# Create a subsample of 70% of your data
SampleNum = round(nrow(dataframeCars)*.70,0)
dataframeCarsSplit = dataframeCars[sample(1:nrow(dataframeCars),SampleNum,replace=FALSE),]

# Create samples for a 8-fold cross validation test; save each subsample as a new dataframe
size = round(nrow(dataframeCars)/8,0)
dataframeCarsSample1 = dataframeCars[sample(1:size,size,replace=FALSE),]
dataframeCarsSample2 = dataframeCars[sample(size+1:(2*size),size,replace=FALSE),]
dataframeCarsSample3 = dataframeCars[sample((2*size)+1:(3*size),size,replace=FALSE),]
dataframeCarsSample4 = dataframeCars[sample((3*size)+1:(4*size),size,replace=FALSE),]
dataframeCarsSample5 = dataframeCars[sample((4*size)+1:(5*size),size,replace=FALSE),]
dataframeCarsSample6 = dataframeCars[sample((5*size)+1:(6*size),size,replace=FALSE),]
dataframeCarsSample7 = dataframeCars[sample((6*size)+1:(7*size),size,replace=FALSE),]
dataframeCarsSample8 = dataframeCars[sample((7*size)+1:nrow(dataframeCars),size,replace=FALSE),]

# Select columns that are numeric and save it as a new dataframe
dataframeCarsNumeric = dataframeCars[,unlist(lapply(dataframeCars,is.numeric))]

# Remove the columns HP and Price from the dataframe
dataframeCars = subset(dataframeCars, select=-c(HP, Price))

# Save the columns Country and Weight as a new datafame
dataframeCarsSubset = dataframeCars[,c("Country","Weight")]

# Rename these two columns in the new dataframe
names(dataframeCarsSubset)[1] = "NewCountry"
names(dataframeCarsSubset)[2] = "NewWeight"