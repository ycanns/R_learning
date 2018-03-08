runif(a,b,c)

a : number variable you want to make
b : beginning (minimum) number
c : maximum number


for (range){
	expression
}


if (condition){
	expression
}



for (x in 1:10){
	if (x>5){
		print(x)
	}
}


x in 1:100
print x when x<5


for (x in 1:100){
	if (x<5){
		print(x)
	}
}


x in 1:100
print x when x<5 | x>95


for (x in 1:100){
	if (runif(1,1,100)<5){
		print (x)
	}
}


for (x in 1:100){
	i <-runif(1,1,100)
	if (i<5){
		print (x)
		print (i)
	}
}

x <- c(ceiling(runif(10,1,1000)))