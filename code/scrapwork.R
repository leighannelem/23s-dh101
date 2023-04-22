
# Want a function that: 
# takes in a .csv (that i've alr turned into a dataframe)
# takes in each indicator
# outputs a data frame with only the values corresponding to the specific indicator\

# also want to output a table/df of indicator code and corresponding name

# check NAs later -- this is just to filter our data based on indicator

# hopefully also integrate a way to add country data into the df

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
  print(i)
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
    my_list <- append(my_list, data[data$Indicator.Name == i,])
    
    
    
    # df <- data[data$Indicator.Name == i,]
    # my_list <- append(my_list, df)
    
    
    # in each iteration, create a new df
    # add that df to my list
  }
  
  my_list2 <- list()
  for (i in 1:length(my_list)) {
    assign(paste0("df_", i), my_list[[i]])
    my_list2 <- append(my_list2, paste0("df_", i))
  }
  # then push that list into the global env
  out <<- my_list2
}

func2 <- function(data) {
  
  # list of indicators
  indic <- as.list(unique(data$Indicator.Name))
  
  for (i in 1:length(indic)) {
    # print(indic[[i]])
    
    # selecting name for this iteration
    ind_name <- indic[[i]]
    
    # assigning data corresponding to this iteration to 
    assign(paste0("df_", i), data[data$Indicator.Name == name,])
    # Will use this later to actually create the df's:
      # data[data$Indicator.Name == name,]
  }
}

func2(data0)

data.frame("hi")

assign(paste0("df_", 420), data0[1,])
class(df_420)
as.data.frame(paste0("df_", 420))

paste('df_', 420, sep = '')









# OK this is not working what about as a list
# naming
#fuck
head(data0)
indic_names_notlist <- unique(data0$Indicator.Name)
class(indic_names_notlist)
list1 <- list()
for (i in 1:length(indic_names)) {
  list1 <- append(list1, indic_names[[i]])
}

list1 [[12]]
names(list1) <- indic_names_notlist
list1[1]








