df <- read.csv("/Users/leighannelemoine/Documents/UCLA/2023-spring/dgthum-101/project/23s-dh101/raw_data/entrepreneurship/Entrepreneurship.csv")
head(df)
unq_names <- unique(df$Indicator.Name)
unq_names
unq_names[1]
ex_df <- df[df$Indicator.Name == unq_names[12],]
ex_df


split_df <- split(df, f = df$Indicator.Name)
split_df[[1]]$Indicator.Name

names(split_df)
class(split_df[["Cost of business start-up procedures, female (% of GNI per capita)"]])


# Say for example I'm intersted in the share of female business owners. 
share_fem_biz <- split_df[["Share of female business owners (% of total business owners)"]]
names(split_df["Share of female business owners (% of total business owners)"])
class(share_fem_biz)
share_fem_biz
# But, we don't need the indicator name or code anymore
share_fem_biz <- share_fem_biz[3:6]
rownames(share_fem_biz) <- NULL
share_fem_biz




testdf <- data.frame(c(1, 2, 3), c(3, 2, 1))
testdf
testlist <- list(testdf, c("a", "b", "c"))
testlist



### Function to create list from the dataframe: 

df_split <- function(df) {
  df_splitup <- split(df, f = df$Indicator.Name)
  #df_reduced <- df_splitup[3:6] bad
  #df_out <<- df_reduced bad
}

df_split(df)
class(df_out)

# Combine this into one function, also with the name

df_get <- function(df, name) {
  # split up the dataframe (turns into a list)
  list_split <- split(df, f = df$Indicator.Name)
  list_ind <- list_split[name]
  df_ind <- list_split[[name]][3:6]
  df_ind
}

df_get(df, "Cost of business start-up procedures, female (% of GNI per capita)")
