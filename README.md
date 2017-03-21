# Simple Comparison of K-means and Hierarchical Clustering in R

<p> For this R code, the mammals milk dataset was used to perfrom K-means and Hierarchical clustering. The following packages are required when running in R: cluster and cluster.datasets. 

<p> A few words on k-means clustering : traditional k-means clustering algorithm works nicely with numerical data. However, if you have categorical features, try K-mode. K-mean algorithm doesn't really provide meanininful insights for one-hot-encoded categorical data because the sample space is so sparse for applying euclidean distance calculation. Try either Gower Distance or agglomerative methods. 

