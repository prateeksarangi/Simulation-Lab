FCFS <- read.csv("~/SMLab/FCFSOP.txt", sep=";")
View(FCFS)
RR <- read.csv("~/SMLab/RROP.txt", sep=";")
View(RR)
SJF <- read.csv("~/SMLab/SJFOP.txt", sep=";")
View(SJF)

avgTimeFCFS <- mean(FCFS[["Time"]])
avgTimeRR <- mean(RR[["Time"]])
avgTimeSJF <- mean(SJF[["Time"]])

avgTime <- c(avgTimeFCFS, avgTimeSJF, avgTimeRR)
name <- c("FCFS", "SJF", "RR")

barplot(avgTime, names.arg = name, xlab = "Scheduling Algorithm", ylab = "Average Time",
        col = "blue", main = "Average time for different algorithms")