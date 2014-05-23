## These functions create a special object named "cacheInverse
## which is a data variable stored in the global environment

## Makes a special Matrix object that can store a Cached Inverse of that Matrix

makeCacheMatrix <- function(x = matrix()) {
        cacheInverse <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function()x
        setInverse <- function(Inverse) cacheInverse <<- Inverse
        getInverse <- function() Inverse
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)

}


## Computes the inverse of the matrix made by makeCacheMatrix

cacheSolve <- function(x, ...) {
        cacheInverse <- x$getInverse
        if(!is.null(cacheInverse)){
                message("getting cached data")
                return(cacheInverse)
        }
        data <- x$get()
        cacheInverse <- solve(data,...)
        x$setInverse(cacheInverse)
        cacheInverse
        }
