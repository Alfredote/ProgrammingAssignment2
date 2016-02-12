## This is my solution of Assignment2-R Programming for your kind consideration.

## The makeCacheMatrix function sets & gets the inverse(or solve) of the matrix, making it available in the cache for a faster use in next functions.

makeCacheMatrix <- function(x = matrix()) {
        sol <- NULL
        set <- function(y) {
                x <<- y
                sol <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) sol <<- solve
        getsolve <- function() sol
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}


## The cacheSolve function checks if the inverse(solve) has been already calculated and, if so, it shows its value.
## Otherwise, this function calculates it and sets it in the cache.
cacheSolve <- function(x, ...) {
        sol <- x$getsolve()
        if(!is.null(sol)) {
                message("getting cached data")
                return(sol)
        }
        data <- x$get()
        sol <- mean(data, ...)
        x$setsolve(sol)
        sol       
}

##Thank you. Best regards.
