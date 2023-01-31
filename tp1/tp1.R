brutToNET <- function(brut) {
  if (!is.numeric(brut)) {
    return("ERROR : type not expected")
  }
  cotisations <- brut * 0.22
  net <- brut - cotisations
  return(net)
}      

ggg