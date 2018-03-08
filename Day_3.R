# Day_3

# Number of alcohol-related Crashes
A <- read.csv(file="I:/Sample_NDS/Data_#2.csv", header=TRUE)

myf <- function (A){

# plottign two graphes in one plot
require(ggplot2)

boxplot(A[,2:3],data=A, main="Number of alcohol-related Crashes bewteen 1995 and 2010", 
  	xlab="Routes", ylab="Number of alcohol-related Crashes")
ggplot(A, aes(A[,1])) +                    # basic graphical object
  geom_line(aes(y=A[,2]), colour="red") +  # first layer
  geom_line(aes(y=A[,3]), colour="green")  # second layer
  
}



# sample NDS data
B <- read.csv(file="I:/Sample_NDS/VehicleID_152851_DriverID_22207/File_ID_1236.csv", header=TRUE)
head(B)
summary(B)
labels(B)

# Check Missing values
is.na(B)

# How many?
missing=0
for (i in 1:nrow(B)){
		for (j in 1:ncol(B)){
			if (is.na(B[i,j])){
				missing=missing+1
			}
		}
	}

missing/(i*j)


par(mfrow=c(3,1))
plot(B$vtti.accel_x)
plot(B$vtti.accel_y)
plot(B$vtti.accel_z)

boxplot(B[,5:7],data=B)






plot(B$vtti.engine_rpm_instant)
plot(B$vtti.gyro_x)
plot(B$vtti.gyro_y)
plot(B$vtti.gyro_z)



plot(B$vtti.lane_distance_off_center, B$vtti.accel_y)
plot(B$vtti.lane_distance_off_center, B$vtti.gyro_y)
plot(B$vtti.accel_y, B$vtti.gyro_y)

# try correlation test
D<-data.frame(B$vtti.lane_distance_off_center,B$vtti.accel_y, B$vtti.gyro_y)
cor(D,method="pearson")


ggplot(B, aes(B[,1])) +                    # basic graphical object
  geom_line(aes(y=B$vtti.speed_network), colour="red") +  # first layer
  geom_line(aes(y=B$vtti.speed_gps), colour="green")  # second layer

