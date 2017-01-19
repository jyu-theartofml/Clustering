library(cluster.datasets)
data(all.mammals.milk.1956)
milk<-all.mammals.milk.1956
head(milk)

# Standardize the numerical variables

milk.mc<-scale(milk[-1])

# K-means clustering of the mean-centered, scaled data
k.means.fit<-kmeans(milk.mc, 2)
# Centroids:
k.means.fit$centers
k.means.fit$cluster

#visualize the cluster
library(cluster)
clusplot(milk.mc, k.means.fit$cluster, main='Clustering of Animal Milk',
         color=TRUE, shade=TRUE,
         labels=2, lines=0)


##Now try Hierarchical clustering:
d <- dist(milk.mc, method = "euclidean")
#hierarchical fiit
H.fit <- hclust(d, method="ward.D")
plot(H.fit)
#two clusters seem to be optimal based on the height of the dendrogram
groups <- cutree(H.fit, k=2)
rect.hclust(H.fit, k=2, border="red") 
