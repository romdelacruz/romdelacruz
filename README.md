- 👋 Hi, I’m @romdelacruz
- 👀 I’m interested in ...
- 🌱 I’m currently learning ...
- 💞️ I’m looking to collaborate on ...
- 📫 How to reach me ...

<!---
romdelacruz/romdelacruz is a ✨ special ✨ repository because its `README.md` (this file) appears on your GitHub profile.
You can click the Preview link to take a look at your changes.
--->
makeCacheMatrix <- function(x = matrix()){
  inv <- NULL
  set <- function(y){
      x <<- y
      inv <<- NULL
  }
  get <- function() {x}
  setInverse <- function(inverse) {inv <<- inverse}
  getInverse <- function() {inv}
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

cacheSolbe <- function(x, ...){
  inv <- x$getInverse()
  if(!is.null)(inv){
      message("getting cached data")
      return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
