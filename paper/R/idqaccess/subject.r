#!/usr/bin/env Rscript

pdf("idqaccess.pdf", width = 6.5, height = 2.9)

df1 <- read.table("data1.txt", header = FALSE)
df2 <- read.table("data2.txt", header = FALSE)
df3 <- read.table("data3.txt", header = FALSE)
df4 <- read.table("data4.txt", header = FALSE)
df5 <- read.table("data5.txt", header = FALSE)
df6 <- read.table("data10.txt", header = FALSE)
df7 <- read.table("data14.txt", header = FALSE)

# adjusting margins
par(mar = c(5, 4, 4, 0), 
    mgp = c(1, 1, 0),
    mai = c(0.4, 0.6, 0.1, 0),
    mfrow = c(1,2))

bp <- boxplot(df1$V1,df2$V1,df3$V1,df4$V1,df5$V1,df6$V1,df7$V1,names=c("1","2","3","4","5","10","14"), boxwex=0.2, cex.axis=1, las=1)

dev.off()

