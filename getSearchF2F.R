# works with the Food2Fork API as of Nov. 2016
# sort= 'r' for rating; 't' for trending -- 't' cannot be used with queries
# 30 results per page -- pages -> how many pages to download
# http://food2fork.com/about/api for key


getSearchF2F <- function(key, query="", sort=c("r", "t"), page=1){
  # check to see if "rjson" is loaded
  if(!require("rjson")){
    print("trying to install rjson")
    install.packages("rjson")
    if(require(rjson)){
      print("rjson installed and loaded")
    } else {
      stop("could not install rjson")
    }
  }
  if(query != ""){
    sort <- "r"
    print("sort can only be 'r' when there is a query")
  }
  URL <- "http://food2fork.com/api/search"
  
  
  URL <- paste0(URL, "?key=", key, "&q=", query, "&sort=", sort, "&page=", page)
  lookUp <- URLencode(URL) #This changes special characters (like spaces) to URL usable characters
    
  recipeJSON <- readLines(lookUp, warn="F")
  recipeList <- fromJSON(recipeJSON)
  
  
  return(recipeList)
}