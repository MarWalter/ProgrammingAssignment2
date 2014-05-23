## These functions create a special object named "cacheInverse
## which is a data variable stored in the global environment

## Stores the inverse of a matrix to the global environment

makeCacheMatrix <- function(x = matrix()) {
        cacheInverse <<- cacheSolve(x)

}


## Computes the inverse of the matrix

cacheSolve <- function(x, ...) {
        solve(x) 
        }
