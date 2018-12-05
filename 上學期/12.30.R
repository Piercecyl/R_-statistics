#Normal Distribution
?dnorm
#den = dnorm(x,mean = 0, sd = 1, log = FALSE) #機率密度函數
#pnorm(q,mean = 0,sd = 1) #累積，(Z值轉機率)
#qnorm(p,mean = 0,sd = 1) #機率轉Z值
#lower.tail if TRUE (default), probabilities are P[X ≤ x], otherwise, P[X > x].
#draw
curve(dnorm(x), -5, 5, col="black")
curve(dnorm(x, sd=2), -5, 5, col="blue", add=T)
curve(dnorm(x, sd=3), -5, 5, col="green", add=T)


qnorm(0.975,mean = 0,sd = 1) #P(Z<z)=0.975，給機率算Z值
qnorm(0.025,0,1, lower.tail = F) #P(Z>z)=0.025
qnorm(0.975,0,1)
qnorm(0.975)


pnorm(1.96)
pnorm(1.959964,0,1) #P(Z<1.959964) = 0.975
pnorm(1.959964,0,1,lower.tail = F) #P(Z>1.959964) = 0.025(Z大於1.959964的機率)，#P(Z>1.96)=1-pnorm(1.96,0,1,lower.tail = T)
pnorm(-1.959964)



#P(-1.96 < Z < 1.65)
pnorm(1.65,0,1,lower.tail = T) - pnorm(-1.96,0,1,lower.tail = F)


#MU = 10Hr, Sd = 1.5Hr(手機充飽電約10H，標準差為1.5H)
#P(8<X<12)充電時間介於8~12小時的機率多少?
(8-10)/1.5 #換成Z值
(12-10)/1.5#換成Z值

#P(-1.33 < Z < 1.33)
#充電時間介於8~12小時的機率多少?
#0.8164
pnorm(1.33) - pnorm(1.33, lower.tail = F)























