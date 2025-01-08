makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL  # Initialize the inverse as NULL
  
  set <- function(y) {
    x <<- y
    inv <<- NULL  # Reset inverse when the matrix is changed
  }
  
  get <- function() x  # Return the matrix
  
  setInverse <- function(inverse) inv <<- inverse  # Cache the inverse
  
  getInverse <- function() inv  # Retrieve the cached inverse
  
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}
