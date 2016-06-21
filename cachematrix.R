## Function that cache the inverse of a matrix
## 

## Usage example:
##
## > source('cachematrix.R')
## > m <- makeCacheMatrix(matrix(c(2, 0, 2), c(2, 2)))
## > cacheSolve(m)
##      [,1] [,2]
## [1,] 0.5 0.0
## [2,] 0.0 0.5

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y
                i <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) i <<- inv
        getinverse <- function() i
        list(
                set = set,
                get = get,
                setinverse = setinverse,
                getinverse = getinverse
        )
}


## Calculates the inverse of the matrix created above
## Uses cached version of matrix if already calculated


