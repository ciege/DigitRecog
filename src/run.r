trainM <- train
labelV <- trainM[,1]
valueM <- as.matrix(trainM[,-1])

normRowOPTS <- c("normRProp",
                   "normRMeanDivSd",
                   "normRSdDivMean",
                   "normRMeanDivVar",
                   "normRVarDivMean")
normColOPTS <- c("normCProp",
                 "normCMeanDivSd",
                 "normCSdDivMean",
                 "normCMeanDivVar",
                 "normCVarDivMean")
normMtxOPTS <- c("normMMeanDivSd",
                 "normMSdDivMean",
                 "normMMeanDivVar",
                 "normMVarDivMean",
                 "normMto0s1s")
modelOPTS <- c("sum")
perdictOPTS <- c("multiplyLA")

