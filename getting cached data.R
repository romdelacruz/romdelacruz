# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  slv <- function(y){
    x <<- y
    b <<- NULL
  }
  get <- function() x
  setInverse <- function(solve) m <<- solve
  getInverse <- function() b
  list( get = getsetInverse = setInverse,getInverse = getInverse)
}

cacheSolve <- function(x, ...){
  b <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(b)
  }
  data <- x$get()
  b <- solve(data, ...)
  x$setInverse(b)
  b
}


