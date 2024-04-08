# Install and load ggplot2 package
install.packages("ggplot2")
library(ggplot2)

# Set working directory
setwd("C:/Users/user/Desktop/github/Heat_Map")

# usimg iris dataset for analysis
head(iris)
tail(iris)

# Convert data to a matrix
data_matrix <- as.matrix(iris[,-5])

# Print the first few rows of the matrix
head(data_matrix)

# Plot heatmap
heatmap(data_matrix)

# sepal.Length values are masking variations in other variables. scale option will scale variables.
# Plot heatmap with dendrograms
heatmap(data_matrix,scale = "column")

# Plot heatmap without column dendrogram
heatmap(data_matrix, scale = "column", Colv = NA)

# Plot heatmap without row dendrogram
heatmap(data_matrix, scale = "column", Rowv = NA)

# Plot heatmap without both dendrograms
heatmap(data_matrix, scale = "column", Colv = NA, Rowv = NA)

# Adjust column axis text size
heatmap(data_matrix, scale = "column", Colv = NA, Rowv = NA, cexCol = 0.75)

# Customize heatmap colors using cm.colors()
heatmap(data_matrix, scale = "column", col = cm.colors(256))

# Customize heatmap colors using terrain.colors()
heatmap(data_matrix, scale = "column", col = terrain.colors(256))

# Customize heatmap colors using a custom color palette
library(RColorBrewer)
#BrBG PiYG PRGn PuOr RdBu RdGy RdYlBu RdYlGn Spectralcustcol <- colorRampPalette(brewer.pal(8, "RdBu"))(25)
heatmap(data_matrix, scale = "column", col = custcol)

# Plot heatmap without dendrograms and using custom colors
heatmap(data_matrix, scale = "column", Colv = NA, Rowv = NA, col = custcol)
