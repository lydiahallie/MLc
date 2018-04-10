dataset = read.csv('Data.csv')

# Check whether value is missing
dataset$Age = ifelse(is.na(dataset$Age),
                     ave(dataset$Age, FUN = function(x) mean(x, na.rm = TRUE)),
                     dataset$Age)

dataset$Salary = ifelse(is.na(dataset$Salary),
                        ave(dataset$Salary, FUN = function(x) mean(x, na.rm = TRUE)),
                        dataset$Salary)

dataset$Country = factor(dataSet$Country,
                         levels = c('France', 'Spain', 'Germany'),
                         labels = c(1, 2, 3))