init <- function(train){
  trainM <- train
  labelV <- trainM[,1]
  valueM <- as.matrix(trainM[,-1])
}