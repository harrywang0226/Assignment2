## Assignment 2

# Question 0
WeiyangWangAssignment2<-list(
  firstname="Weiyang",
  lastname="Wang",
  email="wwang65@ucsc.edu",
  studentID=1505028
)

# Question 1
library(foreign)
require(RCurl) 
diamondsURL<-getURL("https://raw.githubusercontent.com/EconomiCurtis/econ294_2015/master/data/diamonds.CSV")
diamonds<-read.csv(text = diamondsURL)
rm(diamondsURL)
WeiyangWangAssignment2$s1a<-nrow(diamonds)
WeiyangWangAssignment2$s1b<-ncol(diamonds)
WeiyangWangAssignment2$s1c<-names(diamonds)
WeiyangWangAssignment2$s1d<-summary(diamonds$price)

# Question 2
df.td<-read.table(file="https://github.com/EconomiCurtis/econ294_2015/raw/master/data/NHIS_2007_TSV.txt",sep="\t",header=T)
WeiyangWangAssignment2$s2a<-nrow(df.td)
WeiyangWangAssignment2$s2b<-ncol(df.td)
WeiyangWangAssignment2$s2c<-names(df.td)
WeiyangWangAssignment2$s2d<-mean(df.td$weight)
WeiyangWangAssignment2$s2e<-median(df.td$weight)
hist(df.td$weight)
df.td$weight<-ifelse(df.td$weight>=996,NA,df.td$weight)
WeiyangWangAssignment2$s2f<-mean(df.td$weight,na.rm=T)
WeiyangWangAssignment2$s2g<-median(df.td$weight,na.rm=T)
men<-subset(df.td,SEX==1)
women<-subset(df.td,SEX==2)
WeiyangWangAssignment2$s2h<-summary(women)
WeiyangWangAssignment2$s2i<-summary(men)

# Question 3
vec<-c(letters,LETTERS)
WeiyangWangAssignment2$s3a<-vec[c(1:52)%%2==0]
which(vec=="W")
which(vec=="e")
which(vec=="i")
WeiyangWangAssignment2$s3b<-paste(vec[c(49,5,9)],collapse="")
arr<-array(c(letters,LETTERS),dim = c(3,3,3))
WeiyangWangAssignment2$s3c<-arr[,1,2]
WeiyangWangAssignment2$s3d<-arr[2,,]
WeiyangWangAssignment2$s3e<-paste(arr[2,2,3],arr[2,2,1],arr[3,3,1],sep="")

# Question4
org_example<-read.dta(file="http://people.ucsc.edu/~aspearot/Econ_217_Data/org_example.dta")
df<-subset(org_example,select=c(year,month,educ,rw))
WeiyangWangAssignment2$s4<-aggregate(df$rw,list(year=df$year,month=df$month,educ=df$educ),mean,na.rm=T)

