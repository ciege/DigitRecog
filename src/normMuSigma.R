valueM<-as.matrix(train[,-1])
labelV<-as.vector(train[,1])
#woZeroClmValueM <- valueM[,colSums(valueM)>nrow(valueM)]
valueNormM<-apply(valueM,2,function (x){(x-mean(x)/sd(x))})
valueNormM<-trunc(valueNormM*100)

model<-array(dim=c(10,ncol(valueM)))
modelNOT<-array(dim=c(10,ncol(valueM)))

for(digit in 0:9){
  model[digit+1,]<-apply(valueM[train[,1]==digit,1:ncol(valueM)],2,function(x){mean(x)})*1000
}

modelT<-t(apply(model,1,function (x){(x-mean(x)/sd(x))}))