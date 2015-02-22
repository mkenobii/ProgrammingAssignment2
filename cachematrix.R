<<<<<<< HEAD
## The two functions in this script takes in a matrix
## and returns the inverse of the input matrix.

## The makeCacheMatrix function creates a matrix that stores the inverse of the input matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- solve
  getinverse <- function() m
  list(set=set, get=get,
       setinverse=setinverse,
       getinverse=getinverse)
}


## This cacheSolve function returns the stored inverse matrix

cacheSolve <- function(x, ...) {
         m <- x$getinverse()
         if(!is.null(m)){
           message("getting cached data")
           return(m)
         }
         data<-x$get()
         m<-solve(data,...)
         x$setinverse(m)
         m
=======
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
>>>>>>> 5717e67f7eb7d7bf4684c4067ea865cde2e0a3b0
        ## Return a matrix that is the inverse of 'x'
}
