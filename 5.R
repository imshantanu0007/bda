data()
data("mtcars")
sapply(mtcars,class)

head(mtcars,2)

nrow(mtcars)

ncol(mtcars)

mtcars $high =ifelse(mtcars$am>mtcars$gear,"h",ifelse(mtcars$am<mtcars$gear,"g","a"))
head(mtcars,2)

x=mtcars$hp
y=mtcars$wt
plot(x,y)

mtcars[,2]<--as.integer(mtcars[,2])
mtcars[,8]<--as.integer(mtcars[,8])
mtcars[,9]<--as.integer(mtcars[,9])


mtcars[mtcars$cyl<=5,]

rnum=nrow(mtcars)
cnum=ncol(mtcars)

print(rnum)
print(cnum)

x=data.frame(mtcars)
auto=0
man=0
for(i in 0:rnum)
  ifelse(x[,9]==1,auto<-auto+1,man<-man+1)

ifelse(auto>man,print("automatic"),print("manual"))