setwd("~/OneDrive/GithubProjects/GeoClusters_Arabic")

# load data

geodata1 <- read.table("PR_HA_PPEmeta_TOPO_CLUSTER_1MORE", sep = "\t", header = TRUE, row.names = 1)
geodata2 <- read.table("PR_HA_PPEmeta_TOPO_CLUSTER_2MORE", sep = "\t", header = TRUE, row.names = 1)

# cluster data

d <- dist(geodata1, method = "euclidean")
fit <- hclust(d, method = "ward.D")

pdf("~/OneDrive/GithubProjects/GeoClusters_Arabic/result1.pdf", width=200, height=15)
plot(fit)
dev.off()

d <- dist(geodata2, method = "euclidean")
fit <- hclust(d, method = "ward.D")

pdf("~/OneDrive/GithubProjects/GeoClusters_Arabic/result2.pdf", width=200, height=15)
plot(fit)
dev.off()
