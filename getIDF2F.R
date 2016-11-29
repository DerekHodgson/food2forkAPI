# works with the Food2Fork API as of Nov. 2016
# this function takes the output from getSearchF2F() and gets the recipe IDs
# input is a list of lists (usually 30L), and output is a list of the same length

getIDF2F <- function(recipeList){
  length <- length(recipeList$recipes)
  IDList <- list()
  for(i in 1:length){
    tempID <- recipeList$recipe[[i]]$recipe_id
    IDList[i] <- tempID
  }
  return(IDList)
}