# get a key at http://food2fork.com/about/api
key = ""

# use masterF2F() to get the 30 highest ranked recipes
recipeList <- masterF2F(key=key, startPage=1, pages=1)
# extract the ingredients
ingredientList <- getIngredientsF2F(recipeList)

# use masterF2F() to get the ingredient lists for the 30 highest ranked recipes
ingredientListF <- masterF2F(key=key, outputFull=FALSE)
# use masterF2F() to get the ingredient lists for 60 highest ranked recipes
ingredientListF <- masterF2F(key=key, outputFull=FALSE, pages=2)


# use the other arguments
recipeTrendingList <- masterF2F(key=key, sort="t")

recipeSearchList <- masterF2F(key=key, query="apple")
