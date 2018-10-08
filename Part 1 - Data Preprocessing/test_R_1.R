datasets = read.csv('Data.csv')

datasets$Age = ifelse(is.na(datasets$Age),
                      ave(datasets$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                      datasets$Age)

datasets$Salary = ifelse(is.na(datasets$Salary ),
                      ave(datasets$Salary , FUN = function(x) mean(x, na.rm = TRUE)),
                      datasets$Salary)