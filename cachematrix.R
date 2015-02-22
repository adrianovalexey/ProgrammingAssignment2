## Put comments here that give an overall description of what your
## functions do
 
## Write a short comment describing this function
 
## The makeCacheMatrix function creates a special "matrix",
## which is really a list containing a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
	k <- NULL
	set <- function(y) {
		x <<- y
		k <<- NULL 
	}


get <- function() x
setinverse <- function(inverse) k <<- inverse
getinverse <- function() k

list ( 
			set = set,
			get = get,
			setinverse = setinverse,
			getinverse = getinverse
	)
}
 

## Write a short comment describing this function

## The cacheSolve function calculates inverse matrix of the special "matrix"
## which created on the previous step with the makeCacheMatrix function.
## Firstly assign to k inverse matrix, and then check in if statement calculated k,
## if this true, print message and get inverse matrix from cache and skip computing
## Otherwise, our function calculate the inverse of the matrix and sets the value of the inverse
## in the cache via the setinverse function.

 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

        k <- x$getinverse()
        if(!is.null(k)) {
        	message("Getting cached data")
        	
        	k
        }
        data <- x$get()
        k <- solve(data, ...)
        x$setinverse(k)
 
        k
}