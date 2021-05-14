library(ggplot2)
library(jsonlite)

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
  
  df <- data.frame(obs = c(1:40), x)
  
  print(ggplot2::ggplot(data = df, aes(obs, x)) + geom_point())

}
# EXAMPLE 1
#* Confirmation Message
#* @get /testing
#* @serializer text
function(msg=""){
  "My R Service Deployed!"
}


# EXAMPLE 3
#* Plot data
#* @param data Data
#* @get /plot
#* @png
function(data = NA){
  
  x <- as.numeric(unlist(strsplit(data, ",")))
  
  df <- data.frame(obs = c(1:3), x)
  
  print(ggplot2::ggplot(data = df, aes(obs, x)) + geom_point())
}


# EXAMPLE 4
#* Confirmation Message
#* @get /hejsan
#* @serializer print
function(data = NA){
  x <- as.numeric(unlist(strsplit(data, ",")))
  print(paste(x, collapse = " "))
}
