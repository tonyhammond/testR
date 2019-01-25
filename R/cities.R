cities = read.csv("/Users/tony/cities.csv")
summary(cities)
str(cities)
plot(cities$longitude, cities$latitude)
caps = cities[cities$population>=1000000,]
plot(caps$longitude, caps$latitude)


