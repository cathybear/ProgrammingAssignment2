## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## set vector
            m <- NULL
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
## get vector
      get <- function()x
      setinverse <- function(mean) m <<- mean
      getinverse <- function() m
      matrix(set = set, 
             get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
