library(ggnetwork)
library(GGally)
library(network)
library(sna)
library(ggplot2)

net <- rgraph(10, mode = "graph", tprob = 0.5)
net2 <- network(net, directed = FALSE)
network.vertex.names(net2) <- letters[1:10]
ggnet2(net2, node.size = 6, node.color = "black", edge.size = 1, edge.color = "grey")

ggplot(mtcars, aes(x = mpg, y = wt, xend = mpg, yend = wt)) +
  geom_edges(aes(linetype = as.factor(cyl), color = "black")) +
  geom_nodes(aes(color = as.factor(cyl), size = hp)) +
  theme_blank()