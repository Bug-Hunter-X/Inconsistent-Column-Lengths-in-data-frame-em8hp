```r
# Correcting inconsistent column lengths

# Ensure all vectors have the same length by either:
# 1. Adding NA values to shorter vectors
col1 <- c(1, 2, 3)
col2 <- c(4, 5, NA)  #Add NA to match length
df <- data.frame(col1, col2)

# 2. Truncating longer vectors
col3 <- c(1, 2, 3, 4)
col4 <- c(5, 6)
# Keep the length of the shortest vector
min_len <- min(length(col3), length(col4))
df2 <- data.frame(col3 = col3[1:min_len], col4 = col4[1:min_len])
```