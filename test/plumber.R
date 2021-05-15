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
function(chartTitle = NA, var1 = NA, var2 = NA){
  
  x <- as.numeric(unlist(strsplit(var1, ",")))
  y <- as.numeric(unlist(strsplit(var2, ",")))
  
  df <- data.frame(x, y)
  
  print(ggplot2::ggplot(data = df, aes(x, y)) + geom_point() + ggtitle(chartTitle) + theme_minimal())
}


# EXAMPLE 4
#* Plot data
#* @param data Data
#* @get /stapeldiagram
#* @png
function(chartTitle = NA, x1 = NA, x2 = NA, y = NA){
  
  x1 <- as.character(unlist(strsplit(x1, ",")))
  x2 <- as.character(unlist(strsplit(x2, ",")))
  y <- as.numeric(unlist(strsplit(y, ",")))
  
  df <- data.frame(x1, x2, y)
  
  print(
    ggplot2::ggplot(data = df, aes(x = x1, y = y, fill = x1)) +
    geom_bar(stat = "identity", width = 1) +
    geom_text(aes(label = y), vjust = -0.25) +
    facet_grid(~x2, switch = "x", scales = "free_x", space = "free_x") +
    theme(panel.spacing = unit(0, "lines"),
          strip.background = element_blank(),
          strip.placement = "outside")
  )
  
}
