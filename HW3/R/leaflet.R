##install.packages("leaflet")

library("leaflet")

m<-leaflet()

m <- addTiles(m)


m <- addCircleMarkers(m, lng=-118.28819, lat=34.01929, label='Helen Topping', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.29017, lat=34.02011, label='Gerontology', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28893, lat=34.01991, label='Science Engg', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28309, lat=34.02167, label='Leavey', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28364, lat=34.02129, label='Intl and PA', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28410, lat=34.02032, label='Doheny', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28300, lat=34.01967, label='Pardee Lawn', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28374, lat=34.01919, label='Franklin Family', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28502, lat=34.02021, label='USC Fountain', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28462, lat=34.02065, label='ATO Frat', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28317, lat=34.02223, label='Generations', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.28803, lat=34.02400, label='Uytengsu', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m <- addCircleMarkers(m, lng=-118.29416, lat=34.02232, label='Home', radius=2, fillOpacity=1.0,fill = TRUE, fillColor ="red")
m

