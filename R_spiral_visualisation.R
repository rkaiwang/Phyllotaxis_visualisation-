library("ggplot2")

angle <- 13 * pi/180
points <- 2000

t <- (1:points)*angle
# we are using properties of the unit circle so that all of the 2000 points will lie in the circle area of radius 1 
# the x value of each point is derived using sin(t) and the y value using cos(t)
x <- sin(t)
y <- cos(t)

df <- data.frame(t, x, y)

# theme() allows us to control the elements of the plot, we use element_blank() to remove plot elements 
p <- ggplot(df, aes(x*t, y*t))
p + geom_point(mapping = aes(size = t, alpha = 0.1), shape=1, colour="blue") 
+ theme(axis.title = element_blank(),
        axis.text = element_blank(),
        axis.ticks = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect(fill="white"),
        legend.position="none"
)
