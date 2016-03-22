## Put comments here that give an overall description of what your
## functions do

## After review, it looks like we are just creating our variable much like
## the makeVector. After thinking on it i thought that I could replace mean
## with inverse to create the same effect. I was going to change "m" to "i"
## but realized it was a reserve as was "in" so I settled on the variable
## inv

## Write a short comment describing this function
## this takes a matrix and then inverses it and 
## caches it for later use by other functions

makeCacheMatrix <- function(x = matrix()) {

      inv <- NULL
      set <- function(y) {
          x <<- y
          inv <<- NULL
        }
      get <- function() x
     setinverse <- function(inverse) inv <<- inverse
     getinverse <- function() inv
     list(set = set, get = get,
                  setinverse = setinverse,
                  getinverse = getinverse)
  
}


## Write a short comment describing this function

## this displays a chached matrix with a variable of "inv"


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
      inv <- x$getinverse()
      if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
        }
      data <- x$get()
      inv <- inverse(data, ...)
      x$setinverse(inv)
      inv
  }
