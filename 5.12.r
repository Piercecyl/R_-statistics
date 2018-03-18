#兩變異數F-test
var.result = var.test(x1,x2, alternative = "two.sided")
var.result$p.value
#兩獨立母體T-test
t.test(x1,x2, alternative = "two.sided", mu = 0, paired = F, var.equal = T, conf.level = 0.95)
#兩相依母體T-test
t.test(x1,x2, alternative = "two.sided", mu = 0, paired = T, var.equal = T, conf.level = 0.95)
#兩獨立母體比例
prop.test(x1,x2)

#C.I.(代公式)

#ANOVA(CRD)
#y~F
#四間學校各五位學生
Y1 = c(90,87,86,79,66)
Y2 = c(88,82,80,75,52)
Y3 = c(95,81,79,72,61)
Y4 = c(92,78,70,64,50)
Y = c(Y1,Y2,Y3,Y4)
test <- data.frame(A=Y1, B=Y2, C=Y3, D=Y4)

School = as.factor(rep(c("A","B","C","D"),each = 5))
School = as.factor(rep(c("A","B","C","D"),times = c(3,2,4,5)))
mydata <- data.frame(Y,School)

anova(lm(Y~School))
aov_model <- aov(Y~School)
summary(aov(Y~School))
model.tables(aov_model, type = "effects")
model.tables(aov_model, type = "means")

#多重比較
TukeyHSD(aov_model)
plot(TukeyHSD(aov_model))
library(multcomp)
glht(aov_model, linfct = mcp(School="Tukey"))
library(asbio)
lsdCI(Y,School)
bonfCI(Y,School)
tukeyCI(Y,School)
scheffeCI(Y,School)

#ANOVA(RBD)
# Blocking variables是一些我們在實驗中不著重的因素 
# 舉一個例: 在一個飲料實驗中 每個學生都需要試飲2樣特定的飲料 然後再給評分 
# 在這實驗 我們只關注飲料分數的差別 而不是學生 
# 所以學生是blocking variable 而飲料是treatment variable
#Concatenate the data rows into a single vector r .
r = c(t(as.matrix(test)))
r
#Assign new variables for the treatment levels and number of control blocks.
f = c("A", "B", "C", "D")   # treatment levels 
k = 4                    # number of treatment levels 
n = 5                    # number of control blocks
#Create a vector of treatment factors that corresponds to the each element in r of step 3 with the gl function.
tr = gl(k, 1, n*k, factor(f))   # matching treatment 
tr
#Similarly, create a vector of blocking factors for each element in the response data r.
blk = gl(n, k, k*n)             # blocking factor 
blk

mydata_block <- data.frame(r,tr,blk)
interaction.plot(tr,blk,r,col = 1:4)

anova(lm(r~tr+blk))
aov_model_block = aov(r ~ tr + blk)
summary(aov_model_block)

#Chi-Squre(Fit test)
chisq.test(x,p)
x = c(A=20,AB=15,B=30,O=25)
x
result = chisq.test(x)
result$p.value
#H0:p1=p2=p3=p4=1/4,p>alpha,do not reject H0
x = c(20,15,30,25)
ratio = c(0.4,0.4,0.1,0.1)
chisq.test(x,p = ratio)
#H0:pA=0.4,pAB=0.4,pB=0.1,pO=0.1,p<alpha,reject H0

