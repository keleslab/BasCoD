library(MASS)


BasCoD=function(R_0,R_j_list,embedding_0,embedding_j_list,eps=0.3,X_0,X_j_list){
  p=dim(X_0)[2]
  
  K=length(X_j_list)
  embedding_0=embedding_0[,1:R_0]    
  
  lm0=lm(X_0~-1+embedding_0)
  Gamma0hat=lm0$coefficients %>%t    
  
  pvals=c()    
  
  for(k in 1:K){
    
    X_j=X_j_list[[k]]    
    R_j=R_j_list[[k]]    
    embedding_j=embedding_j_list[[k]]
    embedding_j=embedding_j[,1:R_j]        
    
    lma=lm(X_j~-1+embedding_j)
    Gammajhat=lma$coefficients %>%t
    Gammajhat=apply(Gammajhat,2,function(x)x/norm(x,"2"))    
    
    if(R_j!=1){
      rho=diag(cor(Gammajhat,Gamma0hat%*%ginv(Gamma0hat)%*%Gammajhat))
    }else{rho=cor(Gammajhat,Gamma0hat%*%ginv(Gamma0hat)%*%Gammajhat)}
    
    
    pvals=c(pvals,pchisq(sum(-2*log(pnorm((atanh(rho)-atanh(1-eps))*sqrt(p-3)))),lower.tail = FALSE,df=2*R_j))
    
  }
  return(list(corr_vals=rho,pvalue=pvals))
}