# for-loop
for (i in 1:9){
	for (j in 1:9){
		print(x)
	}
}


# sprintf with integer
for (i in 1:9){
	for (j in 1:9){
		sprintf("%i * %i = %i",i,j,i*j)
	}
}
# sprintf with float
sprintf("%.1f * %.2f = %.3f",i,j,i*j)


# function
myf <- function(St,Ed){
	for (i in St:Ed){
		for (j in St:Ed){
			print(i*j)
		}
	}
}


# Get current working directory
getwd()

A <- read.csv(file="path/path/file.csv", header=TRUE)
write.table(A,file="path/path/name.csv", sep=',')

myf <- function(St,Ed){
	for (i in St:Ed){
		for (j in St:Ed){
			print(i*j)
		}
	}
}

getRD <- function(St,Ed){
	A<-runif(1,St,Ed)
	return(A)
}