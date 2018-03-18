babies = read.csv("D:/統計學/babies.csv")
charities = read.csv("D:/統計學/charity.csv")
babies
attach(babies)
#detach(babies)
summary(bwt)
sd(bwt)

#lower.tail if TRUE (default), probabilities are P[X ≤ x], otherwise, P[X > x].
qnorm(0.975,0,1)#P(Z<z)=0.975
qnorm(0.025,0,1, lower.tail = F)#P(Z>z)=0.025
pnorm(1.959964,0,1)#P(Z<1.959964)
pnorm(1.96,0,1,lower.tail = F)#P(Z>1.96)=1-pnorm(1.96,0,1,lower.tail = T)
#P(-1.96<Z<1.65)
pnorm(1.65,0,1,lower.tail = T) - pnorm(-1.96,0,1,lower.tail = T)

#C.I.(Z)
width = qnorm(0.975)*18.236/sqrt(length(bwt))
width = qnorm(0.025, lower.tail = F)*18.236/sqrt(length(bwt))
mean(bwt) + c(-width, width)

#Hypothesis(Z)
library(asbio)
??one.sample.z
one.sample.z(bwt, null.mu = 120, sigma = 18.236, alternative = "two.sided")
#0.414>0.05
one.sample.z(bwt, null.mu = 120, sigma = 18.236, alternative = "less")
#0.207>0.05
n = length(na.exclude(bwt))
z.value = mean(bwt - 120)/(sd(bwt)/sqrt(n))
p.value = 2*(pnorm(-0.8157407))
p.value = 2*(1- pnorm(abs(-0.8157407)))
#??power.z.test

#C.I.(t)
width = qt(0.975, n-1)*18.236/sqrt(n)
width = qt(0.025, n-1, lower.tail = F)*18.236/sqrt(n)
mean(bwt) + c(-width, width)
qt(0.975, n-1)#1.959964

#Hypothesis(t)
one.sample.t(bwt, null.mu = 120, sd = 18.236, alternative = "two.sided")
t.test(bwt, mu = 120, alternative = "two.sided")
t.test(bwt, mu = 120, alternative = "two.sided", conf.level = 0.90)
t.value = mean(bwt - 120)/(sd(bwt)/sqrt(n))
p.value = 2*(1- pt(abs(-0.8157407),n-1))
#??power.t.test

#C.I.(p),Hypothesis(p)
binom.test(46,150,alternative = "two.sided",conf.level = 0.95)
p.hat = 46/150
width = qnorm(0.975)*sqrt((p.hat*(1-p.hat))/150)
p.hat + c(-width, width)

binom.test(46,150,p = 1/3, alternative = "greater",conf.level = 0.95)
#0.781>0.05
#prop.test(157,484,alternative = "two.sided",conf.level = 0.90)

#Determination Sample Size
#99% C.I.
SE = 0.025
sd = 0.1
n = (qnorm(0.995)^2)*(sd^2)/(SE)^2
n = (2.575^2)*(sd^2)/(SE)^2
#n = 107

#C.I.(Var)
n = length(bwt)
alpha = 0.05
S.square = var(bwt)
ss = (n-1)*S.square
c1 = qchisq(alpha/2,n-1)
c2 = qchisq(1- alpha/2,n-1)
#c1 = qchisq(alpha/2,n-1, lower.tail = F)
#c2 = qchisq(1- alpha/2,n-1, lower.tail = F)
c(ss/c2,ss/c1)
c(sqrt(ss/c2),sqrt(ss/c1))