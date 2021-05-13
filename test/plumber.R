# Swagger docs at ...s/__swagger__/ (needs trailing slash!)
if(Sys.getenv('PORT') == '') Sys.setenv(PORT = 8000)
#' @apiTitle R Google Sheets Formulas
#' @apiDescription These endpoints allow the user to create custom functions in Google spreadsheets which call R functions.
#* Return the product of 2 matrices
#* @param bla A number.
#* @post /myCustomFunction
function(bla){
  return(bla) 
}
#* Confirmation Message
#* @get /
function(msg=""){
  "My API Deployed!"
}
