## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##This function creates a list of functions to edit the matrix cache as well as the matrix inverse chache

makeCacheMatrix <- function(x = matrix()) {
  inverse<-NULL
  setmatrix<-function(y){
    inverse<<-NULL
    x<<-y
  }
  getmatrix<-function() x
  setinverse<- function(inv)inverse<<-inv
  getinverse<- function() inverse
  list(setmatrix=setmatrix, getmatrix=getmatrix, setinverse=setinverse, getinverse=getinverse)
  
}


## Write a short comment describing this function

##This function takes the matrix cache object and returns the matrix inverse, it first checks the cache and then calculates the inverse if necessary and saves it. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse<-x$getinverse()
  if(!is.null(inverse)){
    return(inverse)
  }
  matrix<- x$getmatrix()
  inverse<- solve(matrix)
  x$setinverse(inverse)
  inverse
}
