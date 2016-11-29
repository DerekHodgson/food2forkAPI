# food2forkAPI
Interfaces with the food2forkAPI.

rjson required.

Check out the example in example.R
It's free to sign up for 500 API queries. I've removed my key from the example, but you can get your own here: 
http://food2fork.com/about/api

Use masterF2F() to download the recipe information. It uses the other functions (getIDF2F(), getSearchF2F(), getRecipesF2F(), getIngredientsF2F()) to download and put the information in a usable form. Each page returns 30 recipes, so use the pages and startPage arguments to choose how many recipes to download.

By changing the argument outputFull to FALSE when using the function masterF2F(), you can have it only output the ingredients grouped by recipe into lists.

The analysis code is coming soon.
