k<-c(2,5,10,20,30,40,50)
profdiff<-c();profsame<-c()
for(i in 1:length(k)){
  kk<-k[i]
  profdiff[i]<-prod(365:(365-kk+1))/365^{kk}
  profsame[i]<-1-profdiff[i]
}
plot(k,profsame,xlab = 'number of student in class',ylab = 'birthday probability',col='red','l')
lines(k,profdiff,col='green','l')
legend(10,1,'birthday are not same',box.lty = NULL,bty='n')
legend(30,0.7,'birthday are same',box.lty = NULL,bty = 'n')
title("A: The Birthday Problem")