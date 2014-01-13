trainM <- train
labelV <- trainM[,1]
valueM <- as.matrix(trainM[,-1])

normValueM <- normMto0s1s(valueM)


for(digit in 0:9){
  model[digit+1,]<-apply(normValueM[train[,1]==digit,1:ncol(normValueM)],2,function(x){sum(x)})
}
normRMeanDivSdModel<-normRMeanDivSd(model)
normCMeanDivSdModel<-normCMeanDivSd(normRMeanDivSdModel)
perdictedM<-normValueM%*%normCMeanDivSdModel
perdictedV<-apply(perdictedM, 1, function(x){(which.max(x)-1)})
rightV<-perdictedV[perdictedV[]==labelV[]]
length(rightV)/length(labelV)