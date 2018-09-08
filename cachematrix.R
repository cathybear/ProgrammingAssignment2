## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## set vector
            invrs <- NULL
      set <- function(y) {
            x <<- y
            invrs <<- NULL
      }
## get vector
      get <- function()x
##set value of inverse 
      setinverse <- function(inverse) invrs <<- inverse 
      getinverse <- function() invrs
## get the matrix 
      matrix(set = set, 
             get = get,
           setinverse = setinverse,
           getinverse = getinverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
# return inverse matrix of x 
            invrs <- x$getinverse()
## if the inverse matrix is not null, getting a message, and return the inverse matrix 
            if(!is.null(invrs)) {
                  message("getting cached data")
                  return(invrs)
            }
## sign matrix value to data 
            data <- x$get()
            invrs <- inverse(data, ...)
            x$setinverse(invrs) 
## Return a matrix that is the inverse of 'x'
            invrs
       
}
