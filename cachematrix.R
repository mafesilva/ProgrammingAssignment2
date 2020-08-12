## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(m = matrix()) {
        i <- NULL
        
        set <- function(y) 
        {
                 m <<- y
                 i <<- NULL
         }
        
         get <- function() m
         setInv <- function(inverse) i <<- inverse
         getInv <- function() i
         list(set = set, get = get, setInv = setInv, getInv = getInv)

}

## Write a short comment describing this function

cacheSolve <- function(m, ...) {
         i <- m$getInv()
         mat <- m$get()
         i <- solve(mat, ...)
         m$setInv(i)
         i
}

