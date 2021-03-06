---
title: "Simple R Functions "
author: ""
date: "January 26, 2018"
output: pdf_document
---
  
```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```


#1
#a
A= matrix(c(1,1,3,5,2,6,-2,-1,-3), nrow=3, ncol=3, byrow=TRUE)
A
A %*% A %*% A
#b
A[,3] <- c(A[,2]+A[,3])
A

#2
B= matrix(rep(c(10,-10,10),length=45), nrow=15, ncol=3, byrow=TRUE)
B
crossprod(B)

#3
matE <- matrix(rep(0,length=36), nrow=6, ncol=6, byrow=FALSE)
matE[row(matE)==col(matE)-1] <- 1
matE[row(matE)==col(matE)+1] <- 1
matE

#4
outer(c(0,1,2,3,4),c(0,1,2,3,4),'+')

#5
#a
outer(c(0,1,2,3,4),c(0,1,2,3,4),'+')%%5
#b
outer(c(0,1,2,3,4,5,6,7,8,9),c(0,1,2,3,4,5,6,7,8,9),'+')%%10
#c
outer(c(0,1,2,3,4,5,6,7,8),c(9,8,7,6,5,4,3,2,1),'+')%%9

#6
BS6 <- matrix(0,ncol=5,nrow=5)
BS6 <- 1+ abs(col(BS6)-row(BS6))
solve(BS6,matrix(c(7,-1,-3,5,17),ncol=1))

#7
set.seed(75)
aMat <- matrix( sample(10, size=60, replace=T), nr=6)
aMat
#a
aMata <- aMat>4
A7 <-aMata %*% c(1,1,1,1,1,1,1,1,1,1)
A7
#b
row(A7)[A7==2]
#c
aMatc <- colSums(aMat)
aMatc <- outer(aMatc,aMatc,'+')>75
matrix(c(row(aMatc)[aMatc=='TRUE'],col(aMatc)[aMatc=='TRUE']),ncol=2)

#8
#a
search()

$\sum_{i=1}^{20} \sum_{j=1}^5 \frac{i^4}{3+j}$

