n=readline("Enter no of emp:")

empid=c(scan("",what="int",n))
empname=c(scan("",what="string",n))
doj=c(scan("",what="Date",n))
empcode=c(scan("",what="int",n))
dept=c(scan("",what="string",n))
desig=c(scan("",what="string",n))

emp=data.frame(empid,empname,doj,empcode,dept,desig)
emp

write.csv(emp,file="p4.csv")
read.csv("p4.csv",row.names = 1)

read.csv2("p4.csv")

x=data.frame(3,3,"elliot","29/09/1989","2000","CSE","head")
write.table(x,file="p4.csv",append = TRUE,sep=",",quote=FALSE,col.names = FALSE,row.names = FALSE)
read.csv("p4.csv")