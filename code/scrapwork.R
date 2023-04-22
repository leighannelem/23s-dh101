
# Want a function that: 
# takes in a .csv (that i've alr turned into a dataframe)
# takes in each indicator
# outputs a data frame with only the values corresponding to the specific indicator\

# also want to output a table/df of indicator code and corresponding name

# check NAs later -- this is just to filter our data based on indicator


data0 <- read.csv("/Users/leighannelemoine/Documents/UCLA/2023-spring/dgthum-101/project/23s-dh101/raw_data/entrepreneurship/Entrepreneurship.csv")
head(data0)
unique(data0[,1])



head(data0[,"Indicator.Name"])
head(data0$Indicator.Name)
indic_names <- as.list(unique(data0$Indicator.Name))
class(indic_names)
length(indic_names)
indic_code <- as.list(unique(data0$Indicator.Code))
length(indic_code)

for (i in indic_names) {
  print(i)
}

new_df <- data.frame()
new_df

data0[data0$Indicator.Name == "Number of female sole proprietors",]

indic_names[1]
indic_names[[1]]

test_list <- list()
test_list

listylist <- list(c(1, 2, 3))
listylist
listylist <- append(listylist, c(4, 5, 6))
listylist



for (i in indic_names) {
  # want to make an actual new df LOL 
  # base name of df on inicator ID
  #test_list <- append(test_list, data0[data0$Indicator.Name == i,])
}


# creating an object for global env
test_func <- function(x) {
  meow <<- data.frame()
}
test_func(7)
meow
# as a function: 

my_func <- function(data) {
  my_list <- list()
  indic <- as.list(unique(data$Indicator.Name))
  for (i in indic) {
    # in each iteration, create a new df
    # add that df to my list
  }
  # then push that list into the global env
  out # <<- 
}

my_func(data0)
