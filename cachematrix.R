## Put comments here that give an overall description of what your
## functions do
The first function, makeCacheMatrix takes as an input a matrix, and 
	creates an object that holds a matrix that can be set values for the 
	matrix, set values for the inverse of the matrix, return the values
	of the matrix and if stored, return the values of its inverse.
The second function, cacheSolve takes in a makeCacheMatrix object, and stores
	its inverse inside of the object, and returns it

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	inv <- NULL
	set <- function(y){
		x <<- y
		inv <<- NULL
	}
	get <- function() x
	setinv <- function(inverse) inv <<- inverse
	getinv <- function() inv
	list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	inv <- x$getinv()
	if (!is.null(inv)) return(x)
	data <- x$get()
	inv <- solve(data)
	x$setinv(data)
	inv
}
