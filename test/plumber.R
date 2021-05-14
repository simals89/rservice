library(ggplot2)

#' @apiTitle My R Service
#' @apiDescription This service runs scalable R scripts on Google Cloud Run.
# EXAMPLE 2
#* Random Number from Uniform Distribution
#* @param min Lower limit of the distribution.
#* @param max Upper limit of the distribution.
#* @get /runif
#* @png
function(min = 0, max = 1){
  
  x <- runif(n = 40, 
             min = as.numeric(min), 
             max = as.numeric(max))
  
  print(plot(x))

}
# EXAMPLE 1
#* Confirmation Message
#* @get /testing
#* @serializer text
function(msg=""){
  "My R Service Deployed!"
}
