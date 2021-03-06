## Put comments here that give an overall description of what your
## functions do

# Coursera R programming: week 3 assignment
# Cache the inverse of a matrix

## Write a short comment describing this function
#  creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL                           
        set <- function(y) {                
                x <<- y
                m <<- NULL                      
    }

    get <- function() x                        
    
    setinv <- function(inverse) m <<- inverse      
    getinv <- function() m                 
    list(set = set, get = get, setinv = setinv, getinv = getinv)
}


## Write a short comment describing this function
# computes the inverse of the special "matrix" returned by makeCacheMatrix above
# if the inverse has already been calculated and the matrix has not changed, 
# then cacheSolve retrives the inverse from the cache

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    m <- x$getinv()
    
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
        
    data <- x$get()
    m <- solve(data, ...)
    x$setinv(m)
    m
}
