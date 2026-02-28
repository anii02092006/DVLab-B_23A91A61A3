data(iris)
str(iris)
View(iris)
class(iris)
?iris
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab="Sepal_Length",
        col='skyblue')

boxplot(Sepal.Length~Species,
        data=iris,
        main="Sepal Length by Species",
        ylab="Sepal Length",
        xlab="Species",
        col='Lavender')

boxplot(Sepal.Length~Species,
        data=iris,
        main="Sepal Length by Species",
        ylab="Sepal Length",
        xlab="Species",
        col=c('pink','blue','skyblue'))

boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length,
        main="Box plot for Sepal Length",
        ylab="Sepal_Length",
        col='skyblue')
boxplot(iris[,1:4],
        main="Multi Variable Box Plot",
        col=c('pink','seagreen','skyblue','purple'))

species_colors<-c("setosa"="red",
                  "versicolor"="steelblue",
                  "virginica"="green")
boxplot(
  Sepal.Length~Species,
  data=iris,
  col=species_colors,
  main="Sepal Length by Species(Custom Color Palette)"
)
library(ggplot2)

ggplot(iris,
       aes(x=Species,y=Sepal.Length))+
  geom_boxplot()

ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  theme_minimal()

ggplot(iris,aes(x=Species,y=Sepal.Length,fill=Species))+
  geom_boxplot()+
  scale_fill_manual(
    values=c(
      "setosa"="red",
      "versicolor"="seagreen",
      "viginica"="steelblue"
    )
  )+
  theme_minimal()

data(iris)
str(iris)
View(iris)

plot(iris$Sepal.Length,iris$Sepal.Width)

plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  main="Sepal Length vs Sepal Width",
  xlab="Sepal Length(cm)",
  ylab="Sepal Width(cm)",
  col="steelblue",
  pch=16
  
)

plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col=as.numeric(iris$Species),
  pch=16,
  main="Sepal Dimensions by Species"
)

legend(
  "topright",
  legend=levels(iris$Species),
  col=1:3,
  pch=16
)


plot(
  iris$Sepal.Length,
  iris$Sepal.Width,
  col=as.numeric(iris$Species),
  pch=16,
  cex=iris$Petal.Length/max(iris$Petal.Length),
  main="Multivariate Scatter Plot( Color+Size)"
)
pairs(
  iris[,1:4],
  col=as.numeric(iris$Species),
  pch=16,
  main="Scatter Plot Matrix of Iris Dataset"
)
library(ggplot2)
ggplot(iris,
       aes(x=Species,y=Sepal.Width))+
  geom_point()

ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,color=Species))+
  geomm_point(size=2)+
  theme_minimal()

ggplot(
  iris,
  aes(
    x=Sepal.Length,
    y=Sepal.Width,
    color=Species,
    size=Petal.Length
    
  )
)+
  geom_point(alpha=0.7)+
  theme_minimal()

ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width))+
  gem_point(color="steelblue")+
  facet_wrap(~Species)+
  theme_minimal()

library(GGally)
ggpairs(
  iris,
  columns=1:4,
  aes(coloe=Species,alpha=0.6)
)
)