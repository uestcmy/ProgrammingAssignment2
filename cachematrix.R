## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inve <- NULL
        set <- function(y) {
                x <<- y
                inve <<- NULL
        }
        get <- function() x
        setinv <- function(inver) inve <<- inver
        getinv <- function() inve 
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## To calculate the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'  
        inver <- x$getinv()
        if(!is.null(m)) {
                message("getting cached inv matrix of x")
                return(inver)
        }
        data <- x$get()
        inver <- solve(data, ...)
        x$setinv(inver )
        inver 

}
