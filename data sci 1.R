ages  = c(21,30,40,22,45,50,51,23,25,35)
plot(ages)

salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)
plot(salary)
#IN dotrycatch (return(expr),name,parentenv,handler)
#invalid graphics state - solution to this warnings

plot(ages,salary)
plot(salary,ages)

help(plot)

#airqulity = read.csv('path/airquality.csv',header=true,sep=",")
#click on import dataset
data()
airquality = datasets::airquality

##top 10 rows and last 10 rows
head(airquality,10)
tail(airquality,10)
names(airquality) #names of all coloumns

# to see entire datasets click on airquality data set name from work
#####coloumns
airquality[,c(1,2)] #all rows and 

df=airquality[,-6] #excludes column no.6
df

summary(airquality[,1]) #summary statistics for col 1
summary(airquality$temp)
airquality$Wind
summary(airquality$Wind)


##summary of data

summary(airquality) # summary for all col

########visualization
plot(airquality$Wind)
plot(airquality$temp,airquality$wind,type="p")
plot(airquality) #scatterplot
help(plot)
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)

#points and lines
plot(airquality$Wind, type= "p") #p: points,l:
plot(airquality$Wind,  type= "l")
plot(airquality$Wind,  type="b")
help(plot)

plot(airquality$Wind,
           xlab='Ozone concentration',
           ylab='No of Instances',     
           main='Ozone levels in NY city',                       
           col= 'blue',           
           type='l' )          
plot(airquality$Ozone,airquality$Solar.R)
plot(airquality$Solar.R,airquality$Ozone)

#Horizonatal bar plot
barplot(airquality$Ozone,
        main='Ozone conentration in air',
        ylab = 'Ozone levels',
        col ='blue',
        horiz = T,
        axes = F)
help(barplot)

#histogram
hist(airquality$Temp)

hist(airquality$Temp,
     main = 'solar radiation values in air',
     xlab = 'solar rad.',
     col = 'blue',
     border='red')

help(hist)

#Single box plot
help("boxplot")

boxplot(airquality$Wind,
        main="Boxplot",
        col ="blue",
        border='red',
        horizontal=T)

boxplot.stats(airquality$Wind)$out # outlier value

airquality$Wind

#multiple box plot
     boxplot(airquality[,1:4],
     main='multiple box plots',
     horizontal=TRUE,
     col='pink')

#margine of the grid (mar)(bottom,left , top ,right)
#no of rows and coloumns(mfrow),
#whether a border is to be included(bty)
#and position of the 
#labels(las: 1 for horizontal,las:0 for vetical)
#bty - box around  the plot (o,n,7,L,c,U)
help("par")

par(mfrow=c(3,3),mar=c(1,2,1,2),  las=0, bty="o")
plot(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)

plot(airquality$Ozone, type = "l")
plot(airquality$Wind,type="l")
plot(airquality$Solar.R , type = "l")
barplot(airquality$Ozone, main ='ozone concentration',
        xlab = 'ozone levels',col = 'green',horiz = TRUE)
hist(airquality$Solar.R)
boxplot(airquality$Solar.R)
boxplot(airquality[,0:4],main="multiple box plot"  )

#concider NA values
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)

mean(airquality$Solar.R,na.rm=T)
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

#Google following functions as variance in R,etc
#var
#skeness
#kurtosis
#density plot


var(airquality$Wind)
sd(airquality$Ozone)#,na.rm=T standard deviation 
sd(airquality$Ozone,na.rm=T)

skewness(airquality$Ozone)#error
kurtosis(airquality$ozone)#error

#INSTALLING PACKAGES
 
skewness(airquality$Ozone,na.rm = T)
kurtosis(airquality$Ozone,na.rm = T)
skewness(airquality[,1:4],na.rm=T)

#density plot

plot(density(airquality$Wind))
plot(density(airquality$Ozone,na.rm=T))
??density #check kernel density estimation

#in class exercise
e_quakes=datasets::quakes
