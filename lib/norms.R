normRProp <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(prop.table(valueM,1))
}

normCProp <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(prop.table(valueM,2))
}

normRMeanDivSd <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM,1,function (x){(x-mean(x))/sd(x)}))
}

normCMeanDivSd <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM,2,function (x){(x-mean(x))/sd(x)}))
}

normRSdDivMean <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM, 1, function(x){(x-sd(x))/mean(x)}))
}

normCSdDivMean <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM, 2, function(x){(x-sd(x))/mean(x)}))
}

normMMeanDivSd <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix((valueM-mean(valueM))/sd(valueM))
}

normMSdDivMean <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix((valueM-sd(valueM))/mean(valueM))
}

normRMeanDivVar <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM,1,function (x){(x-mean(x))/var(x)}))
}

normCMeanDivVar <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM,2,function (x){(x-mean(x))/var(x)}))
}

normRVarDivMean <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM, 1, function(x){(x-var(x))/mean(x)}))
}

normCVarDivMean <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix(apply(valueM, 2, function(x){(x-var(x))/mean(x)}))
}

normMMeanDivVar <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix((valueM-mean(valueM))/var(valueM))
}

normMVarDivMean <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  cleanMatrix((valueM-var(valueM))/mean(valueM))
}

normMto0s1s <- function(numericMatrix){
  valueM <- as.matrix(numericMatrix)
  valueM[valueM[,]>0] <- 1
  valueM
}