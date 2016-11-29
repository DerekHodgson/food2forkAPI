# works with the Food2Fork API as of Nov. 2016
# this function will use the other F2F functions to search for recipes, download
#   them, and return them as one object
# outputFull=FALSE will output the ingredients only
# outputFull=TRUE will ouput all of the info downloaded

masterF2F <- function(key, query="", sort="r", startPage=1, pages=1, outputFull=TRUE){
  IDList <- list()
  
  for(i in 1:pages){
    recipeListTemp <- getSearchF2F(key=key, query=query, sort=sort, page=startPage + i - 1)

    # use getIDF2F to get the IDs, then appends them to the list
    lengthIDList <- length(IDList)
    IDListTemp <- getIDF2F(recipeListTemp)
    lengthIDListTemp <- length(IDListTemp)
    A <- lengthIDList + 1
    B <- A + lengthIDListTemp - 1
    IDList[A:B] <- IDListTemp
  }
  
  # get the list of recipes
  recipeList <- getRecipesF2F(key=key, IDList=IDList)
    
  # call each of the recipe IDs put the ingredients all in a list
  if(!outputFull){
    ingredientList <- getIngredientsF2F(recipeList=recipeList)  
    return(ingredientList)
  }else{
    return(recipeList)
  }
} 