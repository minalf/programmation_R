brutToNet1 <- function(salaire){
  if (is.numeric(salaire)){
    return (salaire*0.78)
  } else 
  {
    print("ERROR : type not expected")
    }
}

brutToNet2 <- function(salaire,contract){
  if (!is.numeric(salaire))
    {
    return ("ERROR : type not expected")
  } 
  if((contract != "non-cadre") & (contract != "cadre"))
  {return("ERROR : contract unknown")
  }
  if (contract == "non-cadre"){
    salaire = salaire*0.78
    return (salaire*0.925)
  }
  else {
    salaire = salaire*0.75
    return (salaire*0.925)
  }
}

brutToNet3 <- function(salaire,contract,prelevement = 7.5,tps = 100){
  prelevement = (100-prelevement)/100
  tps = tps/100
  if ((tps > 1) | (tps < 0)){
    return("ERROR : rate and time must be in range(0,100)")
  }
  if (!is.numeric(salaire))
  {
    return ("ERROR : type not expected")
  } 
  if((contract != "non-cadre") & (contract != "cadre"))
  {return("ERROR : contract unknown")
  }
  if (contract == "non-cadre"){
    salaire1 = salaire*0.78
    salaire2 = salaire1*prelevement*tps
    return(list(salaire1,salaire2))
  }
  else {
    salaire1 = salaire*0.75
    salaire2 = salaire1*prelevement*tps
    return(list(salaire1,salaire2))
  }
}
