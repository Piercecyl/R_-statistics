a = (1/2)^3
a

b = factorial(5) #階層
b

c = choose(5,2) #C5取二
c

#Bayes
p_has = 0.001 #有病
p_nphs = 0.999 #沒病
p_cor = 0.9 #檢測正確率
p_ncor = 0.1 #檢測錯誤率

a = c(0.001*0.9, 0.001*0.1, 0.999*0.9, 0.999*0.1)
a1 = matrix(a, nrow = 2,ncol = 2, byrow = TRUE)
a1

colnames(a1) = c("檢測", "誤判")
rownames(a1) = c("有病","沒病")

#P(有病|檢測)
p = a1["有病","檢測"] / sum(a1[,"檢測"])
p

#Binomial
dbinom(x,n,p) 
p1 = dbinom(2,5,0.8)
p1
Ex = 5*0.8 #期望值 (重數)
Ex
sd = sqrt(5*0.8*0.2) #標準差(數據分配程度)
sd
#P(X<=2)
p2 = dbinom(0:2,5,0.8)
p2
sum(p2)







