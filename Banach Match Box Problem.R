#if not understand drop a messege!
match_prob<-function(x) choose(2*N-x,N)*2^(-(2*N-x))
N<-50
round(sapply(1:50,match_prob),5)
plot(0:50,cumsum(sapply(0:50,match_prob)),xlab='no. of sticks remained',ylab = 'Commulative Probability','l')
title('Banach Match Box Problem')