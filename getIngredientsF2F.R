# works with the Food2Fork API as of Nov. 2016
# takes a list of recipes returned from the API and returns the ingredients 

getIngredientsF2F <- function(recipeList){
  tempList <- list()
  for (i in 1:length(recipeList)){
    tempList[i] <- list(recipeList[[i]]$ingredients)
  }
  return(tempList)
}