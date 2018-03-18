print("Hello R!")

#��¦�B��
x <- 5
y <- 4
x+y
x-y
x*y
x/y
2^2
2**3
sqrt(y) #�}�ڸ�
abs(-1) #����� 

#use c() to create/combine vectors
num = 1:5
num
sum(num)
mean(num)

#mode
x = c(1:5,5)
t = table(x) #�p��C�ӼƭȪ��Ӽƪ�
t
t[which(table(x) == max(table(x)))] #table(x)�̻P�̤j�ӼƲŦX�����

#�έp�`�Ϋ���
var(num) #�ܲ���(��t)
sd(num) #�зǮt
prod(num) #�s��
max(num)
min(num)
median(num)
range(num) #�d��(1��5)
quantile(num) #�ʤ���Z
q1 = quantile(num,0.25)
q1
q3 = quantile(num,0.75)
q3
IQR(num) #�|����Z(Q3-Q1)
a <- c(sum(num),mean(num),var(num),sd(num),median(num))
a
summary(num) #�ӼƭȥN���N�q



x <- list(a = 1, b = TRUE, c = "test", d = c(1, 2, 3)) 
x
x[4]  #��ܲĥ|�Ӧ�ȱo��
x[[4]] #��ܼƭ�4

#data.frame
data.frame(id=c(1,2,3,4,5,6), income=c(4,8,15,16,25,30), edu=c(5,6,7,12,15,19))
b = data.frame(id=c(1,2,3,4,5,6), income=c(5,6,15,16,25,30), edu=c(5,6,14,15,20,19))
weight = c(30,50,70)
height = c(160,170,180)
gender = c("F","M","M")
name = c("Amy","Bruce","Temin")
persons = data.frame(name,gender,height,weight)
mean(persons$height)
sd(persons$weight) #�зǮt

#Data structure????????????????????
character????????????????????? "" ????????????ex???"test"
numeric?????????
integer?????????
complex?????????
logical???True ??? False
class(10)
class("Hello")

#Ū�iCSV
data1 <- read.csv("D:/R/customer.csv", header = T)
summary(data$age)
mean(data$income)
median(data$employ)
sort(data$age) #�Ƨ�(�Ѥp��j)
sort(data$age, decreasing = TRUE) #�Ƨ�(�Ѥj��p)

#barplot
counts <- table(data$gender) #Ū�i��CSV�����ʧO�A���O���Ӽ�
barplot(counts, main="Gerder",
        names.arg=c("0 Female", "1 Male"))

#piechart
counts <- table(data$jobcat)
counts <- table(data$jobcat,data$gender)# A will be rows, B will be columns 
pct <- counts/sum(counts)*100
pct
jobc <- c("student", "teacher", "police", "artist", "athlete", "banker")
jobc <- paste(jobc,pct)
jobc <- paste(jobc,"%",sep="")
pie(counts, labels = jobc, main="Pie Chart of jobs")

#stem-and-leaf
stem(data$age)

#histogram
hist(data$income, nclass = 10 )

#boxplot
boxplot(data$age, horizontal = TRUE, xlab = "Age", main="Boxplot")

#plot(������)
plot(data$age,data$income, main="scatter plot")
plot

#�ɥR
f = function(x)
  {
  if(x > 10)
    {
    print("x is great than 10");
    } 
  else if( x >=0 & x <=10) 
    {
    print("x is between 0 and 10");
    } 
  else 
    {
    print("x is less than 0");
    } 
}
f(10)
f(-1)
#for�j��
for(i in c('a','b')){
  print(i);
} 
for(j in seq(from=4, to=10, by=3)) { #�ǦC
  print(j);
} 
for(k in 1:3) {
  if(k == 3) break;
  print(k);
} 

a = 3;
while(a > 0){
  print(a);
  a = a - 1;
} 
