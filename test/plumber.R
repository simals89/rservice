#* Random Number from Uniform Distribution
#* @param min Lower limit of the distribution.
#* @param max Upper limit of the distribution.
#* @get /runif/
#* @serializer html
function(min = 0, max = 1){
  
  x <- runif(n = 1, 
             min = as.numeric(min), 
             max = as.numeric(max))
  
  return(paste0('<h3>', x, '</h3>'))
}
