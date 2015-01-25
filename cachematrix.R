## R Programming Programming Assignment 2
## By Chate

## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(Poo = matrix()) {
  ##this function creates a list containing function that will:
  ## 1. set value of the matrix
  ## 2. get value of the matrix
  ## 3. set the inverse of the matrix
  ## 4. get the inverse the matrix
  
  InverseAs <- NULL
  set <- function(As) {
      Poo <<- As
      InverseAs <<- NULL
  }
  get <- function() Poo  ##get
  setInv <- function(Inv) InverseAs <<- Inv  ##set inverse matrix
  getInv <- function() InverseAs  ##get inver....bah you get the idea by now
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}


## Write a short comment describing this function

cacheSolve <- function(Poo, ...) {
  
  ## Return a matrix that is the inverse of 'x'
  InverseAs <- Poo$getInv()  ##get inverse matrix from cache
  
  ## If cache value of the inverse exists, then return the cached value
  if(!is.null(InverseAs)) {
    message("getting cached inversed matrix")
    return(InverseAs)  ##returns the matrix from cache
  }
  Poopdata <- Poo$get()  ##no cache matrix, so get the data 
  InverseAs <- solve(Poopdata, ...)  ##inverse it
  Poo$setInv(InverseAs)  ##set it into cache
  InverseAs  ##then returns it
  
}
  