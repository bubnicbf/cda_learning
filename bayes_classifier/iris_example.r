#Exploring and preparing dataset
#read the data
# Iris <- read.csv("/Users/ben.bubnick/Downloads/iris-species/Iris.csv")

#Applying headers
# colnames(iris)[1:5]=c("sepal_length","sepal_width","petal_length","petal_width","class")

# justchecking a summary of the data set
summary(iris)

# converting the data as an object that categorizes the data as a vector, i.e. a factor to class
iris$class=factor(iris$class)
# just checking the structure of iris data
str(iris)

# Creating table for class variable 
table(iris$class)

# Making random sample that will be the training set.  If replace is true a sample may contain an element several times while another element might not occur at all.
sample_iris=sample(150,40,replace = FALSE)

#creating training and test dataset
iris_training=iris[sample_iris,]
iris_test=iris[-sample_iris,]

#creating a vector of all the possible values (levels) in the class 
iris_training_labels=iris[sample_iris,]$class
iris_test_labels=iris[-sample_iris,]$class

#table for training and test data
table(iris_training$class)
table(iris_test$class)

#Training model
library(e1071)
iris_classifier=naiveBayes(iris_training,iris_training_labels)

#Evaluvating model performance
iris_test_pred=predict(iris_classifier,iris_test)
iris_test_pred

#Model fitting
library(gmodels)
CrossTable(iris_test_pred,iris_test_labels,prop.chisq = FALSE, prop.t = FALSE, prop.r = FALSE, dnn = c('predicted', 'actual'))
