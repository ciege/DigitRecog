trainM <- train
labelV <- trainM[,1]
valueM <- as.matrix(trainM[,-1])
rnormValueM <- prop.table(valueM,1)
model<-array(dim=c(10,ncol(rnormValueM)))
modelNOT<-array(dim=c(10,ncol(rnormValueM)))

for(digit in 0:9){
  model[digit+1,]<-apply(rnormValueM[train[,1]==digit,1:ncol(rnormValueM)],2,function(x){mean(x)})*1000
}


modelN<-apply(model, 2, function(x){(x-sd(x))/mean(x)})
# modelInt<-trunc(model)
# model<-trunc(prop.table(modelInt,1)*100000000)
# 
# model<-trunc(prop.table(modelInt,2)*100000000)