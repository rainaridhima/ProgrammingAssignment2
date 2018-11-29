## There are 2 functions that create a cache to store the inverse of a matrix and retrieve it whenever needed. If the value is not present in the cache, then we calculate it and store it in the cache.

## This function is used to store and retrieve the matrix and it's inverse.
makeCacheMatrix <- function (x = numeric())
{
 S <- NULL
 get<- function()
  {
    x
  }
 set <- function(y)
 {
   S <<- NULL
   x <<- y
 }
  setsolve <- function(m)
  {
    S <<- m
  }
  getsolve <- function()
  {
    return (S)
  }
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
}


## This function is used to compute the inverse of a matrix and get it from the cache if already present
cacheSolve <- function(mymatrix)
{ 
  

  check <- mymatrix$getsolve()
  if (!is.null(check))
  {
    print ("Getting value from cache..")
    return(check)
  }
  else
  {
    print("Computing inverse..")
    data <- solve(mymatrix$get())
    mymatrix$setsolve(data)
    print(S)
    ##print(data)
  }
 
}