# How to use the apply function?


arr3d <- array(1:60, 
               dim=c(10, 3, 2), 
               dimnames=list(paste("stu", 1:10, sep=""),
                             paste("sub", 1:3, sep=""),
                             paste("batch", 1:2, sep="")))
print(arr3d)

apply(arr3d, c(2, 3), sum)
apply(arr3d, c(1, 3), sum)

apply(arr3d, c(2, 3), length)
apply(arr3d, c(1, 3), length)

