usn= as.character(c("1NT16CS161","1NT16CS174","1NT16CS200"))
names=as.character(c("ram","shyam","bob"))
marks=as.integer(c(80,75,85))

df= data.frame(usn,names,marks)
print(df)
summary(df)

age=as.integer(c())
n=readline("enter no. of inputs:")

for(i in 1:n)
{
  x= readline("enter age:")
  age[i]=as.integer(x)
}

table=data.frame(usn,names,marks,age)
table

table$names[(table$age<21)&(table$marks>75)]
