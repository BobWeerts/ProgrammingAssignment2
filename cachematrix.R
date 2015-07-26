

## These functions, "makeCacheMatrix" and "cacheSolve", work together
## to create and cash instances of a data matrix and its inverse.
## "makeCacheMatrix" provides variables for holding and methods for 
## setting and getting both matrices 

## Manages the holding (cashing), setting and getting of a specific
## matrix and its inverse: respectively its "standard_matrix" and  
## "inverse_matrix" attributes

makeCacheMatrix <- function(x = matrix()) {
  standard_matrix <- x
  inverse_matrix <- NULL
  
  ## Initializes makeCacheMatrix object
  ## where the standard_matrix attribute is assigned a matrix
  ## and the inverse_matrix attribute is assigned NULL
  set_standard_matrix <- function(y = matrix()) {
    standard_matrix <<- y
    inverse_matrix <<- NULL
  }
  
  ## Returns value of standard_matrix attribute
  get_standard_matrix <- function() {
    standard_matrix
  }
  
  ## Assigns a value to the inverse_matrix attribute
  set_inverse_matrix <- function(y = matrix()) {
    inverse_matrix <- y
  }
  
  ## Returns the value of the inverse_matrix attribute
  get_inverse_matrix <- function() {
    inverse_matrix
  }
  
  list(set_standard_matrix = set_standard_matrix,
       get_standard_matrix = get_standard_matrix,
       set_inverse_matrix = set_inverse_matrix,
       get_inverse_matrix = get_inverse_matrix)
}


## Tests if makeCacheMatrix has cashed its inverse_matrix attribute
## If that attribute is NULL it retrieves makeCacheMatrix's standard_matrix
## attribute, calulates its inverse and stores the inverse in makeCacheMatrix's
## inverse_matrix attribute

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  iMtx <- x$get_inverse_matrix()
  if(is.null(iMtx)) {
    tMtx <- x$get_standard_matrix()
    iMtx <- solve(data)
    x$set_inverse_matrix(iMtx)
  }
}


