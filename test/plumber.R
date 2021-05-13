#' @apiTitle My R Service
#' @apiDescription This service runs scalable R scripts on Google Cloud Run.
# EXAMPLE 2
#* Random Number from Uniform Distribution
#* @param min Lower limit of the distribution.
#* @param max Upper limit of the distribution.
#* @get /runif
#* @serializer html
function(var1 = 0, var2 = 1){
  
  x <- runif(n = 1, 
             min = as.numeric(var1), 
             max = as.numeric(var2))
  
  paste0('<h3>', x, '</h3>')
}
