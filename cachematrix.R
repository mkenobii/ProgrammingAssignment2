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
