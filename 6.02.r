#卡方齊一性 H0:兩城市抽菸比例一致
taipei = c(205,890,1870)
kaohsiung = c(124,748,1560)
x1 = rbind(taipei,kaohsiung)
colnames(x1) <- c("經常抽菸","偶爾抽菸","不抽菸")
chisq.test(x1)

#卡方獨立性 H0:學歷收入互相獨立
r1 = c(8,10,9)
r2 = c(7,17,6)
r3 = c(5,15,23)
x2 = rbind(r1,r2,r3)
colnames(x2) <- c("高","中","低")
row.names(x2) <- c("研究所","大專","高中")
chisq.test(x2)

#Simple Regression
Drug <- matrix(nrow = 5,ncol = 2)
Percent_Drug <- c(1:5)
Reaction_time <- c(1,1,2,2,4)
Drug <- as.data.frame(Drug)
colnames(Drug) <- c("Percent x of Drug","Reaction Time of y")
Drug[,1] <- Percent_Drug
Drug[,2] <- Reaction_time
Drug

x = Drug$`Percent x of Drug`
y = Drug$`Reaction Time of y`
plot(x,y)
beta1 = sum((x - mean(x))*(y - mean(y)))/sum((x - mean(x))^2)
beta1
beta0 = mean(y) - beta1*mean(x)
beta0
slm.model <- lm(y~x)
summary(slm.model)
slm.model$fitted.values 
SSE = deviance(slm.model)

t = qt(0.975,3)
c(0.7-t*0.1915,0.7+t*0.1915)

anova(slm.model)

# plot(slm.model)
# resid = slm.model$residuals

# z = c(5,1,3,2,4)
# lm(y~x+z)
# summary(lm(y~x+z))

cor(x,y)
cor.test(x,y, alternative = "two.sided", method = "pearson", conf.level = 0.95)



