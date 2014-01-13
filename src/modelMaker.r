matrixModel <- function(valueM, labelV, statFunction = sum){
  model <- matrix(nrow = 10, ncol = dim(valueM)[2])
  for(digit in 0:9){
    model[digit+1,]<-apply(valueM[labelV[]==digit,1:ncol(valueM)],2,statFunction)
  }
  model
}