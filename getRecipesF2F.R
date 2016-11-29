# works with the Food2Fork API as of Nov. 2016

getRecipesF2F <- function(key, IDList){
  #   check to see if "rjson" is loaded
  if(!require("rjson")){
    print("Installing rjson")
    install.packages("rjson")
    
    if(require(rjson)){
      print("rjson installed and loaded")
    } else {
      stop("Could not install rjson")
    }
  }
  
  #  url <- "http://food2fork.com/api/get?key=af7868f6b38739d87a4f2c8e059b2d7e&rId=" # original line
  url <- paste0("http://food2fork.com/api/get?key=", key, "&rId=")
  recipeList <- list()
  
  for(i in 1:length(IDList)){
    queryURL <- paste0(url, IDList[i])
    
    lookUp <- URLencode(queryURL) # this changes special characters to URL usable characters
    recipeJSON <- readLines(lookUp, warn="F")
    recipeList[i] <- fromJSON(recipeJSON)
  }
  return(recipeList)
}