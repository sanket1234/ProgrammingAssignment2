## The following function defines a list which contains 
## 1.Set the elements of the matrix
## 2.Get the matrix
## 3.Set the elements of the inversed matrix
## 4.Get the inversed matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<- NULL
  set<-function(y){
    x<<-y                        
    m<<-NULL
  }
  get <- function(){
    x
  }
  setinverse <- function(solve){
    m<<- solve
  }
  getinverse <-function(){
    m
  }
  ## Creatiing a list containing 4 functions which will be used to get the inverse matrix.
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

## This function calculated the inverse matrix and displays it.
## If already calculated, output the inverse matrix from the cache mmemory.
cacheSolve <- function(x, ...) {
  m<-x$getinverse()
  if(!is.null(m)) {   #Checking the cache memory.
    message("getting cached data")
    return(m)
  }
  data <- x$get()       # if not, getting the matrix to compute inversion
  m <- solve(data, ...) # Inverting the matrix
  x$setinverse(m)       # Setting the inversed matrix in cache memory
  m                     # Displaying the output
 
}
