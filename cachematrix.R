## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#this function creates inverse of matrix and stores it in a object

makeCacheMatrix <- function(x = matrix()) {#define the argument
  inver <-NULL # create a variable to assign matrix
  set <-function(y){ #definite the function "set"
    x <<- y            #make value of matrix in parent environment
    inver <<- NULL     #if there is a matrix, reset inver to NULL
  }
  get <-function() x   #define function"get" - return valye of the matrix argument
  
  setinverse <-function(inverse) inver <<- inverse   #assign valye of inver in parent environment
  getinverse <- function() inver                    #get value of inver
  list(set=set, get=get, setinverse = setinver, getinverse=getinverse) #

}


## Write a short comment describing this function
#if the above funciton has not computed the inverse, this function will calculate it, else it will retrieve the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inver <-x$getinverse()
  if(!is.null(inver)){
    message("getting cached data")
    return(inver)
  }
  data <- x$get()
  inver <-mean(data, ...)
  x$setinverse(inver)
  inver
}
