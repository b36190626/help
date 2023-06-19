# Task 1: In the console and in the R script, calculate 2 + 2.
2+2
result <- 2+2
print(result)

# Task 2: Display help for the "print" built-in function.
?print

# Task 3: Create a new program file "prog_xx.R" (xx - your initials) and save to the Desktop, write the command displaying 'Hello World'.
cat("hello world")

# Task 4: Add numbers 10 and 10. Then divide the result by 2. Subtract 5 from the result. Then multiply the result by 3. Use parentheses or braces.
result <- (((10+10)/2)-5)*3
print(result)
# Task 5: Write on the screen the following sentence: "The beginning is the most important part of the work" - Platon. The quote should be enclosed in quotation marks.
cat('"The beginning is the most important part of the work"-Platon')

# Task 6: Write the following text on the screen in separate lines:
#         Learning of programming
#         requires
#         persistent work

cat("Learning of programming\nrequires\npersistent work")


# Task 7: Write a R program to create a vector of a specified type and length. Create vector of numeric, complex, logical and  character types of length 10.
abc <- numeric(10)
print(abc)
def<- complex(10)
print(def)
ghi<- logical(10)
print(ghi)
jkl<- character(10)
print(jkl)

(abc = "cem")

# Task 8: Write a R program to append value to a given empty vector.
(cem = numeric(7))
cem = c(cem, 1)
print(cem)

# Task 9: Write a R program to find Sum, Mean and Product of a Vector, ignore element like NA or NaN.
(ignore = c(1,2,3,4,NA,NaN))
length(ignore)
sum(ignore, na.rm = TRUE)
mean(ignore, na.rm = TRUE)
prod(ignore, na.rm = TRUE)


# Task 10: Write a R program to count the specific value in a given vector.
(ex = c(1,0,2,3,5,5,6,8,9,4,4,5,6,4,7,8,8,7,9))
spec_val=8
(result = sum(spec_val == ex))

# Task 11: Write a R program to find second highest value in a given vector.
x= c(5,4,7,9,1,2,3,4,4,4,5,4,6,7,7,40)
result = sort(x, decreasing = TRUE)
cat('second highest value is', result[2])


# Task 12: Write a R program to find nth highest value in a given vector.
y= c(1,2,3,4,4,4,5,4,6)
(result= sort(y, decreasing = TRUE))
n=2

print(result[n])
# Task 13: Write a R program to find common elements from multiple vectors.

x= c(1,2,3,4,5)
y= c(1,8,9,2)
z =c(7,6)
u= c(1,7)

xy = intersect(x,y)
zu= intersect(z,u)
result= intersect(xy,zu)

# Task 14: Write a R program to list the distinct values in a vector from a given vector.
x = c(1,2,3,4,5,6,7,8,1,2,3)
distinct=unique(x)

# Task 15: Write a R program to find the elements of a given vector that are not in another given vector.
x= c(1,2,3,4,8,9,7,5,7)
y= c(1,2,3,4,8,9,7,10,7)
z= c(15,8,7,6,14)

xy = setdiff(x,y)
res = setdiff(xy,z)

# Task 16: Write a R program to concatenate a vector.

x= c(1,2,3,4,8,9,7,5,7)
y= c(1,2,3,4,8,9,7,10,7)

resulttttt = c(x,y)


# Task 17: Write a R program to get the unique elements of a given string.

x = ('abcaskdjasdnkjascknskcankjsadjncakjnscsdc')

benzersiz = unique(strsplit(x,"")[[1]])

                                            #EXERCISE 2



# In all below tasks create your own toy objects i.e. named vectors, non-empty vectors and lists etc.
# 
# Task 1: Write a R program to find the levels of factor of a given vector.
x = c(1,2,3,4,4,6,7,8,8)
factor_vec =factor(x)
(level=levels(factor_vec))


# Task 2: Write a R program to change the first level of a factor with another level of a given factor.
x = c(1,2,3,4,4,6,7,8,8)
factor_vec = factor(x)
new_vector = relevel(factor_vec, ref = levels(factor_vec)[2])
print(new_vector)

?relevel
# Task 3: Write a R program to create an ordered factor from data consisting of the names of months.
x= c(month.name)
ordered_factor = factor(x , levels = x , ordered = TRUE)
print(ordered_factor)


# Task 4: Write a R program to concatenate two given factors in a single factor. 
x= factor(c('february', 'april','may','july','september'))
y= factor(c('january', 'march','june','august','february'))
concatenate_vector = factor(c(x,y))
print(concatenate_vector)

# Task 5: Write a R program to count the specific value in a given vector.
x = c(1,2,3,1,4,5,6,7)
spec_value=1
count = sum(x == spec_value)
print(count)


# Task 6: Write a R program to extract the five of the levels of factor created from a random sample from the LETTERS.

set.seed(4568)
my_sample = factor(sample(LETTERS, size = 15, replace = TRUE))
fiveLevels = levels(my_sample)[1:5]
print(fiveLevels)

# Task 7: Write a R program to create a list containing strings, numbers, vectors and a logical values.

benim_listem = list("kaan", 666, c(1,2,3,4), FALSE )
print(benim_listem)

# Task 8: Write a R program to list containing a vector, a matrix and a list and give names to the elements in the list.
task8_answer = list(vektor = c(3.14,5),liste = list('kaan','cem','0'), matris = matrix(ncol=3, nrow=3))
task8_answer

# Task 9: Write a R program to select second element of a given nested list.

my_list = list(list(c(1,2,3),1,2),list('a','b','c'),list(c(2)))
second_element = my_list[[2]][2]
print(second_element)


# Task 10: Write a R program to create a list containing a vector, a matrix and a list and update the last element.

task_answer = list(vektor = c(3.14,5),liste = list('kaan','cem','0'), matris = matrix(ncol=3, nrow=3))

task_answer[length(task_answer)] = "updat"


# Task 11: Write a R program to merge two given lists into one list.

my_list = list('a','c','f')
second_list = list('e','t','u')
merge_list = c(my_list, second_list)
print(merge_list)


# Task 12: Write a R program to convert a given list to vector.
my_list = list('a','v','b')
convert_vector = unlist(my_list)
print(convert_vector)


?unlist
# Task 13: Write a R program to count number of objects in a given list.

my_list = list(1, 'a', TRUE, c(1,2,3))
count = length(my_list)
print(count)


# Task 14: Write a R program to assign NULL to a given list element.

my_list = list(1,2,3,4)
my_list[[3]] = NULL
print(my_list)


# Task 15: Write a R program to Add 10 to each element of the first vector in a given list.

my_list = list(c(1,2,3,4),c(2,3,4),c(5,6,7))
my_list[[1]] = my_list[[1]] + 10
print(my_list)

# Her elemana 10 ekleyin
my_list <- lapply(my_list, function(x) x + 10)

# Sonucu görüntüleyin
print(my_list)


# Task 16: Write a R program to get the length of the first two vectors of a given list.

my_list = list(c(1,2,3), c(4,5,6,7), c(1,5,6,8,5))
length1= length(my_list[[1]])
length2= length(my_list[[2]])
print(length1)
print(length2)

# Task 17: Write a R program to find all elements of a given list that are not in another given list.

my_list1 = list(1,2,3,4,5,6)
my_list2 = list(2,5,8,9,3)

list = setdiff(my_list1, my_list2)
print(list)

                                  #EXERCISE 3


# Task 1:
# a) Create the "letter" vector containing upper case letters from the basic alphabet (26 letters).

letter <- LETTERS
print(letter)

# b) Create the "numbers" vector containing consecutive integers from 1 to "n",

# where "n" is the number of elements from the "letter" vector (do not enter this value manually).
n= length(letter)
numbers= seq(1,n)
print(numbers)

# c) Create the "letters_numbers" vector connecting the "letters" and "numbers" element by element by the sign "_".

letters_numbers= paste(letter,numbers, sep = "_")
print(letters_numbers)
  
# d) Create the attribute on the "letters_numbers" vector indicating the type of the vector.

attr(letter_numbers, "type") = "character"
typeof(letter_numbers)

# e) Convert the "letters_numbers" vector to the "Matrix_letters_numbers" matrix of size "2x13" by inserting subsequent elements into rows.  
# 

Matrix_letters_numbers= matrix(letter_numbers, nrow=2, ncol=13, byrow= TRUE)
print(Matrix_letter_numbers)

#TRUE OLURSA A C E G diye gider ( satira gore siralar)
#FALSE OLURSA A B C D diye gider ( kolona gore siralar)


# Task 2:
# a) Create the "list_2" list with 5 default values.

list_2 <- vector("list", 5)
print(list_2)

# b) Create the "vector_2" vector by drawing 5 integers (without repeats) from a vector from 1 to 10.
#    The initial value of the random number generator should be set to 123.
set.seed(123)
vectorOnetoTen = 1:10

vector_2 = sample(1:10, 5, replace = FALSE)
print(vector_2)

# c) Using the lapply function, insert in the next elements of the "list_2" list (list has 5 elements, see point a) 
#    vector repeating a specific number from the "vector_2" vector (you should get 3,8,4,7,6) 
#    so many times, what number is contained under the investigated element of the vector "vector_2", 
#    e.g. for the number 4 the vector is of length 4 and each element will have number 4.


list_2= lapply(vector_2, function(x) rep(x,x))
print(list_2)

# d) Convert "list_2" list into a vector of integers.
list_1= as.list(vector_2)#
print(list_1)
typeof(list_1)

vector_convert = unlist(list_2)
print(vector_convert)

# 
# Task 3:
# a) Create function that indicates the outlier observations of the given vector of real numbers (x <-rcauchy(10)) 
#using the quartile rule: <Q1-1.5*(Q3-Q1), >Q3+1.5*(Q3-Q1).


# b) The function should return an object with the given attributes containing information:
#   a. what values are outlier

#   b. what values are not outlier
#   c. outlier indexes
#   d. non-outlier indexes
# c) (use the functions quantile, which, attr).
# 
find_outliers <- function(x){
  Q1 <- quantile(x, 0.25)
  Q3 <- quantile(x, 0.75)
  lower_limit <- Q1 - 1.5 * (Q3 - Q1)
  upper_limit <- Q3 + 1.5 * (Q3 - Q1)
  outliers <- x[x < lower_limit | x > upper_limit]
  non_outliers <- x[x >= lower_limit & x <= upper_limit]
  outlier_indexes <- which(x < lower_limit | x > upper_limit)
  non_outlier_indexes <- which(x >= lower_limit & x <= upper_limit)
  attr_list <- list(values_outlier=outliers, values_non_outlier=non_outliers, 
                    indexes_outlier=outlier_indexes, indexes_non_outlier=non_outlier_indexes)
  attr(attr_list, "outlier_info") <- "information about outliers"
  return(attr_list)
}
set.seed(123)
x <- rcauchy(10)
find_outliers(x)

# Task 4: 
# a) Import the file Exercise_4.txt into "Table_4" object.
?read.table
import_data
Table_4 <- read.table("C:/Users/ACER/Desktop/R/Exercise_4.txt", 
                      header = TRUE, sep = "&" )
print(Table_4)

# b) Give the table the attribute "My_name" informing about your name.
#Display all table attributes.

attr(Table_4, "My_name") <- "Cem"
print(attributes(Table_4))

# c) Convert above table to "List_4" list.

List_4 <- as.list(Table_4)
print(List_4)


# d) Create a function that converts any numerical input vector into a subtitle vector according to the following rule:
#    if the value is less than or equal to 1.5 - enter "less than 1.5", otherwise "more than 1.5".
# e) Apply the created function on the "List_4" list items from point c).
List_4 <- lapply(List_4, function(x) ifelse(x<=1.5, 'less than 1.5','more than 1.5'))

List_4 <- lapply(List_4, convert_subtitle)
print(List_4)


                                           #EXERCISE 4

# Task 1:
# a) Create the "list_2" list with 5 default values.
list_2 <- vector("list", 5)
print(list_2)

# b) Create the "vector_2" vector by drawing 5 integers (without repeats) from a vector from 1 to 10.
#    The initial value of the random number generator should be set to 123.

set.seed(123)  # Set the initial value of the random number generator
vector_2 <- sample(1:10, 5, replace = FALSE)
print(vector_2)

  # c) Using the "repeat" loop, insert in the next elements of the "list_2" list (list has 5 elements, see point a) 
#    the vector repeating a specific number from the "vector_2" vector (you should get 3,8,4,7,6) 
#    so many times, what number is contained under the investigated element of the vector "vector_2", 
#    e.g. for the number 4 the vector is of length 4 and each element will have number 4.

list_2 = lapply(vector_2, function(x) rep(x,x))
list_2


  i <- 1
repeat {
  list_2[[i]] <- rep(vector_2[i], vector_2[i])
  i <- i + 1
  if( i > length(vector_2)) break
}
list_2

# 
# Task 2:
# a) Create a vector containing numbers from 1 to 9.

vector_1 = 1:9
print(vector_1)

vector_1 = seq(1,9)
print(vector_1)

# b) Create a list that matches the length of the vector in point a).

list_1 = length(vector_1)
list_1= vector('list', length(vector_1))
print(list_1)

# c) With a for loop iterating within the values contained in the vector from point a), insert in the subsequent elements of the list a subset of the vector from point a), so that
#    the first element of the list contains the first element, the second element of the list contains the first and second element, ...,
#    the ninth element of the list contains all elements. A kind of pyramid will be created.

for (i in vector_1) {
  list_1[[i]] <- vector_1[1:i]
  
}
print(list_1)


for (i in vector_1) {
  list_1[[i]] <- vector_1[1:i]
}

print(list_1)
?seq_along
# Task 3: 
# a) Simulate 30 integers between 10 and 20. The initial value of the random number generator should be set to 444.
set.seed(444)
simulated_vector = sample(10:20, 30, replace = TRUE)
print(simulated_vector)


# b) Pre-allocate a vector of integers with default values.
#    The length of this vector is determined as the length of the simulated vector from the point a).

allocated_vector <- vector("integer", length(simulated_vector))
print(allocated_vector)


# c) Using the for loop, insert the elements of the random vector (point a) into the vector from the point b).
#    The loop should be made in two versions: 
#    - operating on the indexes of both vectors and 
#    - on the real values of one of them.
#    In the last step, each loop should display (without using the print() function) 
#the entire vector (point b) and information about its type (line below).

# First approach (operating on the indexes of both vectors):

for (i in 1:n){
  allocated_vector[i]=simulated_vector[i]
  if (i == n) cat(allocated_vector,'\n',"Type of vector:", typeof(allocated_vector),'\n',sep = " ")
}


# Second approach (operating on the real values of one of them):
allocated_vector <- vector("integer", n)
i <- 1
for (num in simulated_vector) {
  allocated_vector[i] <- num
  if(i == n) cat(allocated_vector, '\n', "Type of vector: ", typeof(allocated_vector), '\n', sep = " ")
  else i <- i + 1
}



                                          #EXERCISE 5


# In all below tasks create your own toy objects i.e. named vectors, non-empty vectors and lists etc.
# 
# Task 1: Write a R program to create a blank matrix.
blank_matrix = matrix(nrow =3, ncol=3)
print(blank_matrix)

# Task 2: Write a R program to create a matrix taking a given vector of numbers as input. Display the matrix.

vector = 1:9
matrix1 = matrix(vector, nrow =3, ncol=3)
print(matrix1)

# Task 3: Write a R program to create a matrix taking a given vector of numbers as input and 
#define the column and row names. Display the matrix.

matrix_with_names <- matrix(vector, nrow = 3, ncol = 3, dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2", "Col3")))
print(matrix_with_names)

?dimnames
# Task 4: Write a R program to access the element at 3rd column and 2nd row, 
#only the 3rd row and only the 4th column of a given matrix. 

matrix <- matrix(1:9, nrow = 3)
element_3_2 <- matrix[2, 3]  # Element at 3rd column and 2nd row
third_row <- matrix[3, ]  # 3rd row
fourth_column <- matrix[, 3]  # 4th column

print(element_3_2)
print(third_row)
print(fourth_column)



# Task 5: Write a R program to create two 2x3 matrix and add, subtract, multiply and 
#divide the matrixes.
matrix1 <- matrix(1:6, nrow = 2)
matrix2 <- matrix(7:12, nrow = 2)

# Matrix addition
matrix_addition <- matrix1 + matrix2

# Matrix subtraction
matrix_subtraction <- matrix1 - matrix2

# Matrix multiplication
matrix_multiplication <- matrix1 * matrix2

# Matrix division
matrix_division <- matrix1 / matrix2

print(matrix_addition)
print(matrix_subtraction)
print(matrix_multiplication)
print(matrix_division)

# Task 6: Write a R program to create a matrix from a list of given vectors.

given_vector = list(vector1 = 1:3, vector2 = 4:6 , vector3 = 7:9)
given_matric = do.call(cbind, given_vector)
given_matric

# Task 7: Write a R program to extract the submatrix whose rows have column value > 7 from a given matrix.
matrix_task7 <- matrix(1:10, 5, 2)
task7 <- matrix_task7[matrix_task7 > 7]
task7
# Task 8: Write a R program to convert a given matrix to a list of column-vectors.
matrix <- matrix(1:6, nrow = 2)

list_of_columns <- split(matrix, seq_len(ncol(matrix)))

print(list_of_columns)


# Task 9: Write a R program to find row and column index of maximum and minimum value in a 
#given matrix.

matrix <- matrix(1:9, nrow = 3)

max_value <- max(matrix)
min_value <- min(matrix)
max_index <- which(matrix == max_value, arr.ind = TRUE)
min_index <- which(matrix == min_value, arr.ind = TRUE)

print(paste("Maximum value:", max_value))
print(paste("Maximum value index:", max_index))
print(paste("Minimum value:", min_value))
print(paste("Minimum value index:", min_index))


# Task 10: Write a R program to rotate a given matrix 90 degree clockwise rotation.


matrix <- matrix(1:9, nrow = 3)

rotated_matrix <- t(apply(matrix, 2, rev))

print(rotated_matrix)

# Task 11: Write a R program to concatenate two given matrices of same column but different rows.

matrix1 <- matrix(1:6, nrow = 2)
matrix2 <- matrix(7:12, nrow = 2)

# Concatenating the matrices
concatenated_matrix <- rbind(matrix1, matrix2)

print(concatenated_matrix)

# Task 12: Write a R program to convert a given matrix to a 1 dimensional array.

matrix <- matrix(1:9, nrow = 3)

array <- as.vector(matrix)

print(array)

# Task 13: Write a R program to create an 3 dimensional array of 24 elements 
#using the dim() function.
vector <- 1:24
array <- array(vector, dim = c(2, 3, 4))

print(array)

# Task 14: Write a R program to create an array of two 3x3 matrices each with 3 
#rows and 3 columns from two given two vectors. Print the second row of the 
#second matrix of the array and the element in the 3rd row and 3rd column of the 1st matrix.
matrix1 <- matrix(1:9, nrow = 3)
matrix2 <- matrix(10:18, nrow = 3)

# Creating an array from the matrices
array <- array(c(matrix1, matrix2), dim = c(3, 3, 2))

# Accessing specific elements
second_row_second_matrix <- array[2, , 2]
element_3_3_first_matrix <- array[1, 3, 1]

print(second_row_second_matrix)
print(element_3_3_first_matrix)

# Task 15: Write a R program to create an array using four given columns, 
#three given rows, and two given tables and display the content of the array.
columns <- 2
rows <- 3
tables <- 2

array <- array(1:(columns * rows * tables), dim = c(columns, rows, tables))

print(array)

# Task 16: Write a R program to create a two-dimensional 5x3 array of sequence of 
#even integers greater than 50.

array <- array(seq(52, by = 2, length.out = 15), dim = c(5, 3))

print(array)

# Task 17: Write a R program to create an empty data frame.

data_frame <- data.frame()

print(data_frame)

# Task 18: Write a R program to create a data frame from four given vectors.
vector1 <- c("John", "Alice", "Bob")
vector2 <- c(25, 30, 28)
vector3 <- c("Male", "Female", "Male")
vector4 <- c(TRUE, FALSE, TRUE)

data_frame <- data.frame(Name = vector1, Age = vector2, Gender = vector3,
                         Married = vector4)

print(data_frame)

# Task 19: Write a R program to get the structure of a given data frame.

data_frame <- data.frame(Name = c("John", "Alice", "Bob"), Age = c(25, 30, 28), 
                         Gender = c("Male", "Female", "Male"))

structure <- str(data_frame)

print(structure)


# Task 20: Write a R program to get the statistical summary and nature of 
#the data of a given data frame. 

data_frame <- data.frame(Height = c(165, 170, 175), Weight = c(60, 65, 70))

summary <- summary(data_frame)
nature <- attributes(data_frame)

print(summary)
print(nature)

# Task 21: Write a R program to extract 3rd and 5th rows with 1st and 3rd 
#columns from a given data frame.

data_frame <- data.frame(Name = c("John", "Alice", "Bob"), Age = c(25, 30, 28), 
                         Gender = c("Male", "Female", "Male"))

extracted_data <- data_frame[c(3, 5), c(1, 3)]

print(extracted_data)

# Task 22: Write a R program to add a new column in a given data frame.

data_frame <- data.frame(Name = c("John", "Alice", "Bob"), 
                         Age = c(25, 30, 28))

data_frame$new_column <- c("A", "B", "C")

print(data_frame)

# Task 23: Write a R program to drop column(s) by name from a given data frame.


data_frame <- data.frame(Name = c("John", "Alice", "Bob"), Age = c(25, 30, 28), Gender = c("Male", "Female", "Male"))

data_frame <- subset(data_frame, select = -c(Age, Gender))

print(data_frame)

# Task 24: Write a R program to sort a given data frame by multiple column(s).

data_frame <- data.frame(Name = c("John", "Alice", "Bob"), Age = c(25, 30, 28), Gender = c("Male", "Female", "Male"))

sorted_data_frame <- data_frame[order(data_frame$Age, data_frame$Name), ]

print(sorted_data_frame)

# Task 25: Write a R program to create inner, outer, left, right join(merge) 
#from given two data frames.
data_frame1 <- data.frame(Name = c("John", "Alice", "Bob"), Age = c(25, 30, 28))
data_frame2 <- data.frame(Name = c("John", "Alice", "Bob"), Gender = c("Male", "Female", "Male"))

# Inner join
inner_join <- merge(data_frame1, data_frame2, by = "Name", all = FALSE)

# Outer join
outer_join <- merge(data_frame1, data_frame2, by = "Name", all = TRUE)

# Left join
left_join <- merge(data_frame1, data_frame2, by = "Name", all.x = TRUE)

# Right join
right_join <- merge(data_frame1, data_frame2, by = "Name", all.y = TRUE)

print(inner_join)
print(outer_join)
print(left_join)
print(right_join)


# Task 26: Write a R program to replace NA values with 3 in a given data frame.

data_frame <- data.frame(Name = c("John", NA, "Bob"), Age = c(25, 30, NA))

data_frame[is.na(data_frame)] <- 0

print(data_frame)



# Task 27: Write a R program to compare two data frames to find the elements in 
#first data frame that are not present in second data frame.

data_frame1 <- data.frame(Name = c("John", "Alice", "Bob"), Age = c(25, 30, 28))
data_frame2 <- data.frame(Name = c("John", "Bob"), Age = c(25, 28))

not_in_second_data_frame <- data_frame1[!(data_frame1$Name %in% data_frame2$Name), ]

print(not_in_second_data_frame)

# Task 28: Write a R program to count the number of NA values in a data frame 
#column.



data_frame <- data.frame(Name = c("John", NA, "Bob"), Age = c(25, 30, NA))

na_count <- sum(is.na(data_frame$Age))

print(na_count)



                                    #EXERCISE 6

# Task 1:
# a) Write your own function "cumsum" (returning a vector whose elements are cumulative sums).
# b) Compare its operation with the built-in function "cumsum".
cumsum_custom <- function(x) {
  result <- numeric(length(x))
  sum_val <- 0
  
  for (i in seq_along(x)) {
    sum_val <- sum_val + x[i]
    result[i] <- sum_val
  }
  
  return(result)
}

# Test the custom cumsum function
x <- 1:5
custom_result <- cumsum_custom(x)
built_in_result <- cumsum(x)

print(custom_result)
print(built_in_result)
# Task 2:
# a) Write a function that solves the linear equation "y = ax + b" for the given input parameters "a, x, b".
solve_linear_equation <- function(a, x, b) {
  y <- a * x + b
  return(y)
}

# Test the solve linear equation function
a <- 2
x <- 3
b <- 1
result <- solve_linear_equation(a, x, b)

print(result)

# Task 3:
# a) Write your own function equivalent to the built-in "matrix" function. See the "matrix" source code.
# 
matrix_custom <- function(data, nrow, ncol) {
  dim(data) <- c(nrow, ncol)
  return(data)
}

# Test the custom matrix function
data <- 1:6
nrow <- 2
ncol <- 3
custom_matrix <- matrix_custom(data, nrow, ncol)
built_in_matrix <- matrix(data, nrow, ncol)

print(custom_matrix)
print(built_in_matrix)

# Tasks 4:
# a) Write "inverseC" functions, reversing the order of elements in a given vector,
#    e.g. reverseC (1:10), returns 10:1.
# b) The function should take a parameter: "vec" - the vector that is subject to analysis.

inverseC <- function(vec) {
  result <- rev(vec)
  return(result)
}

# Test the inverseC function
vec <- 1:10
result <- inverseC(vec)

print(result)

# Tasks 5:
# a) Write "countC" function counting the number of occurrences of a given value in a given vector,
#    e.g. countC ( c(1,2,3,4,5,2,4,2,5,5,5,5,5), c(1,4,5) ), returns: 1 2 6.


countC <- function(vec, numbers) {
  result <- sapply(numbers, function(x) sum(vec == x))
  return(result)
}

# Test the countC function
vec <- c(1, 2, 3, 4, 5, 2, 4, 2, 5, 5, 5, 5, 5)
numbers <- c(1, 4, 5)
result <- countC(vec, numbers)

print(result)

# b) The function should take two parameters: "vec" - the vector to be analyzed,
#    and numbers - a vector of numbers that we want to count in the vector "vec".
# 


# Tasks 6:
# a) Write "indexC" function that indexes any vector the same way the [] operator does in R,
#    eg: (11:20) [c (4,8,10)]
# b) The function should take two parameters: "vec" - the vector we want to index,
#    and "indx" - the vector of indices we want to get from the vector vec.

indexC <- function(vec, indx) {
  result <- vec[indx]
  return(result)
}

# Test the indexC function
vec <- 11:20
indx <- c(4, 8, 10)
result <- indexC(vec, indx)

print(result)




                                     #EXERCISE 7

###### Task 1:
# a) Create blank matrix of the size "1000x1001".
#    Assign name "Y" to the first column. Assign names "x_1" to "x_1000" for the remaining columns.
# b) Insert random values from vector 1 to 100 into column "Y". set.seed = (555).
# c) Insert into columns from "x_1" to "x_1000" values according to the following scheme
#    "x_i = Y + random value from normal distribution". set.seed = (555).

mat <- matrix(nrow = 1000, ncol = 1001)

# Assign column names
colnames(mat) <- c("Y", paste0("x_", 1:1000))

# b) Insert random values into column "Y"
set.seed(555)
mat[, "Y"] <- sample(1:100, 1000, replace = TRUE)

# c) Insert values into columns from "x_1" to "x_1000"

set.seed(555)
mat[, -1] <- mat[, "Y"] + rnorm(1000)

# View the matrix
print(mat)

# Task 2:
# a) Create a function that takes the following parameters: "data", "Yname", "XnameList", "CoreNumber", "method".
# b) The function operating on the "data" should create a linear regression model for "Yname" with reference to the variables XnameList.
#    In the simplest form for data from "Task 1" these are the following models: ("Y ~ x1", "Y ~ x2", "Y ~ x3" etc.).
#    The form the model is defined by the "XnameList" parameter, taking an object of the list type.
#    The list has as many items as there are models to be built. Each item in the list is a vector of "x" variable names.
#    Example: "list(x1, c(x1, x5, x7))" builds two models 1) "Y ~ x1" and 2) "Y ~ x1 + x5 + x7".
# c) The function should build each combination of models in parallel.
# d) Depending on the argument passed to "method", the function should use either a parallel version of "lapply",
#    or a parallel version of the "for" loop.
# e) Each parallel loop should return information about variable/variable names (first text column)
#    and parameter estimates (second numeric column).
# f) The function should return the results as a list.
# g) The function name is "ModelParallel".


ModelParallel <- function(data, Yname, XnameList, CoreNumber, method) {
  library(parallel)
  num_models <- length(XnameList)
  results <- vector("list", num_models)
  
  # Set up parallel computing
  cl <- makeCluster(CoreNumber)
  clusterEvalQ(cl, library(stats))
  
  # Function to build a linear regression model for each XnameList
  build_model <- function(x_names) {
    formula <- as.formula(paste(Yname, "~", paste(x_names, collapse = " + ")))
    model <- lm(formula, data = data)
    coefs <- coef(model)
    result <- cbind(x_names, coefs)
    return(result)
  }
  
  # Apply parallel computing using lapply or for loop based on the method argument
  if (method == "lapply") {
    results <- parLapply(cl, XnameList, build_model)
  } else if (method == "for") {
    for (i in seq_along(XnameList)) {
      results[[i]] <- build_model(XnameList[[i]])
    }
  }
  
  # Stop parallel computing
  stopCluster(cl)
  
  return(results)
}

# Test the ModelParallel function
data <- mat  # Assuming mat is the matrix from Task 1
Yname <- "Y"
XnameList <- list(c("x_1"), c("x_1", "x_5", "x_7"))
CoreNumber <- 4  # Number of cores to use for parallel computing
method <- "lapply"  # Use "lapply" for parallel computing

results <- ModelParallel(data, Yname, XnameList, CoreNumber, method)

# View the results
print(results)


                                          #EXERCISE 8

# Task 1:
# a) Create blank matrix of the size "1000x1001".
big_matrix <- matrix(data = (1000 : 1001), nrow = 1000, ncol = 1001)
big_matrix

#    Assign name "Y" to the first column. Assign names "x_1" to "x_1000" for the remaining columns.
colnames(big_matrix) <-  c("Y",paste0("X",sep = "_" ,1:1000 ))
big_matrix
# b) Insert random values from vector 1 to 100 into column "Y". set.seed = (555).
set.seed = (555)
big_matrix[,"Y"] = sample(1:100 , size = 1000, replace = T)


# c) Insert into columns from "x_1" to "x_1000" values according to the following scheme
#    "x_i = Y + random value from normal distribution". set.seed = (555).
set.seed(555)
for ( i in 1:1000) { 
  big_matrix[, i+1]= big_matrix[, "Y"] +rnorm(1000)
}
big_matrix
data2 <- data.frame(big_matrix)

# Task 2:
# a) Let's simulate the working environment: Assume that your computer has only 50MB of RAM.
# b) Create a function that takes the following parameters: "data", "filter".
# c) The function should evaluate the size of the "data" object in the first step.
#    If the "data" is larger than the available RAM, the object should be processed appropriately.
# d) The function should then filter the rows in the "data" object through the "filter" parameter,
#    accepting a condition in the form of the text: "Variable_name operator value (&, |) ...".
#    Example: "x5 >= 0.5" or "x8 %in% c(0.3,0.6)" or "x2 >= 0.5 & x3 < 0.1".
#    Hint: since "filter" is text, it needs to be converted into an expression.
# e) The function should return the filtered "data" object and work FAST.
# f) The name of the function is "Filter".
#    *HINT*: parse, deparse, substitute, text
# 

Filter = function(data, filter) {
  if (object_size(data) > 5*(2^20)) { # byte
    return(data[eval(parse(text = filter))])
  }
  else {
    return(data)
  }
}


# Task 3:
# a) Test the developed functions on the table from "Task 1".
```{r}
Filter(data = myMatrix, filter="\"x_5\" >= 0.5")

#OTHER VERSION 

data(iris)
Filter <- function(data, filter) {
  object_size <- object.size(data) / 1024^2  # Size of the data object in MB
  
  if (object_size > 50) {
    message("Data object is too large for available RAM. Implement appropriate processing here.")
    # Implement appropriate processing for large data objects here
  }
  
  filter_expr <- parse(text = filter)  # Convert the filter text into an expression
  filtered_data <- data[eval(filter_expr), ]  # Filter the rows based on the condition
  
  return(filtered_data)
}

# Task 3: Test the Filter Function

# Example usage with the iris dataset
data(iris)
filter_condition <- "Species == 'setosa' & Sepal.Width > 3.5"  # Replace with your own filter condition
filtered_data <- Filter(iris, filter_condition)
print(filtered_data)
