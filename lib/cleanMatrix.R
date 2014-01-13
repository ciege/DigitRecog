cleanMatrix<-function(x) { 
  x[is.na(x[])]<-0
  x[is.nan(x[])]<-0
  x[is.infinite(x[])]<-0
  x
}