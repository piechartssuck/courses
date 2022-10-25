library(tidyverse)  # data manipulation and visualization
library(gridExtra)  # plot arrangement
library(patchwork)  # tidy plot arrangement

data("USArrests")

head(USArrests, 10)

# compute variance of each variable
apply(USArrests, 2, var)

# create new data frame with centered variables
scaled_df <- 
  apply(USArrests, 2, scale)

head(scaled_df)

# Calculate eigenvalues & eigenvectors
arrests.cov <- 
  cov(scaled_df)

arrests.eigen <- 
  eigen(arrests.cov)

str(arrests.eigen)

# Extract the loadings
(phi <- 
    arrests.eigen$vectors[,1:2])

phi <- -phi

row.names(phi) <- c("Murder", "Assault", "UrbanPop", "Rape")

colnames(phi) <- c("PC1", "PC2")

phi

# Calculate Principal Components scores
PC1 <- as.matrix(scaled_df) %*% phi[,1]
PC2 <- as.matrix(scaled_df) %*% phi[,2]

# Create data frame with Principal Components scores
PC <- data.frame(State = row.names(USArrests), PC1, PC2)

head(PC)

# Plot Principal Components for each State
ggplot(PC, aes(PC1, PC2)) + 
  modelr::geom_ref_line(h = 0) +
  modelr::geom_ref_line(v = 0) +
  geom_text(aes(label = State), size = 3) +
  xlab("First Principal Component") + 
  ylab("Second Principal Component") + 
  ggtitle("First Two Principal Components of USArrests Data")

PVE <- 
  arrests.eigen$values / sum(arrests.eigen$values)

round(PVE, 2)

# PVE (aka scree) plot
PVEplot <-
  qplot(c(1:4), PVE) + 
  geom_line() + 
  xlab("Principal Component") + 
  ylab("PVE") +
  ggtitle("Scree Plot") +
  ylim(0, 1)

# Cumulative PVE plot
cumPVE <- 
  qplot(c(1:4), cumsum(PVE)) + 
  geom_line() + 
  xlab("Principal Component") + 
  ylab(NULL) + 
  ggtitle("Cumulative Scree Plot") +
  ylim(0,1)

grid.arrange(PVEplot, cumPVE, ncol = 2)

# OR
PVEplot + cumPVE

pca_result <- 
  prcomp(USArrests, 
         scale = TRUE)

names(pca_result)

# means
pca_result$center

# standard deviations
pca_result$scale

pca_result$rotation

pca_result$rotation <- 
  -pca_result$rotation

pca_result$rotation

pca_result$x <- -pca_result$x

head(pca_result$x)

biplot(pca_result, scale = 0)

pca_result$sdev

(VE <- pca_result$sdev^2)

PVE <- 
  VE / sum(VE)

round(PVE, 2)
