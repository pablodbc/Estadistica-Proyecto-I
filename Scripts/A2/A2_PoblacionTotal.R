# 	
#		ESTADISTICA PARA INGENIEROS - PROYECTO 1
#
#		ACTIVIDAD 2
#
# 			Gráficos descriptivos de las variables por continente:
#				- Histograma:
#						- Población total
#						- Nacimientos anuales 
#				- Diagrama de caja:
#						- Tasa de mortalidad menores de 5 años
#						- Tasa de mortalidad menores de 1 año
#						- INB per capita
#						- Esperanza de vida al nacer
#
#			Continentes:
#				- Africa
#				- America del Norte
#				- America del Sur
#				- Asia
#				- Europa
#				- Oceania
#
#		A2_PoblacionTotal.R:
#			Script para graficar variable "Población total".
#
#		AUTORES:
#			- Jose Acevedo 13-10006
#			- Pablo Betancourt 13-10147

datosUnicef <- read.csv2("Unicef.csv", fileEncoding="latin1", check.names=FALSE)

# Extracción de datos
poblacionTotalAfrica <- as.numeric(unlist(subset(datosUnicef, Continente=="Africa")["Poblacion total (miles)"]))
poblacionTotalAmericaDelNorte <- as.numeric(unlist(subset(datosUnicef, Continente=="America del Norte")["Poblacion total (miles)"]))
poblacionTotalAmericaDelSur <- as.numeric(unlist(subset(datosUnicef, Continente=="America del Sur")["Poblacion total (miles)"]))
poblacionTotalAsia <- as.numeric(unlist(subset(datosUnicef, Continente=="Asia")["Poblacion total (miles)"]))
poblacionTotalEuropa <- as.numeric(unlist(subset(datosUnicef, Continente=="Europa")["Poblacion total (miles)"]))
poblacionTotalOceania <- as.numeric(unlist(subset(datosUnicef, Continente=="Oceania")["Poblacion total (miles)"]))

# Creación de histogramas por continente
jpeg("A2_Histograma1_PoblacionTotal_Africa.jpeg")
hist(poblacionTotalAfrica,
	main="África",
	xlab="Población total (miles)",
	ylab="Nro. países",
	xlim=c(0,1400000),
	ylim=c(0,40)
)

jpeg("A2_Histograma2_PoblacionTotal_AmericaDelNorte.jpeg")
hist(poblacionTotalAmericaDelNorte,
	main="América del Norte",
	xlab="Población total (miles)",
	ylab="Nro. países",
	xlim=c(0,1400000),
	ylim=c(0,40)
)

jpeg("A2_Histograma3_PoblacionTotal_AmericaDelSur.jpeg")
hist(poblacionTotalAmericaDelSur,
	main="América del Sur",
	xlab="Población total (miles)",
	ylab="Nro. países",
	xlim=c(0,1400000),
	ylim=c(0,40)
)	

jpeg("A2_Histograma4_PoblacionTotal_Asia.jpeg")
hist(poblacionTotalAsia,
	main="Asia",
	xlab="Población total (miles)",
	ylab="Nro. países",
	xlim=c(0,1400000),
	ylim=c(0,40)
)

jpeg("A2_Histograma5_PoblacionTotal_Europa.jpeg")
hist(poblacionTotalEuropa,
	main="Europa",
	xlab="Población total (miles)",
	ylab="Nro. países",
	xlim=c(0,1400000),
	ylim=c(0,40)
)

jpeg("A2_Histograma6_PoblacionTotal_Oceania.jpeg")
hist(poblacionTotalOceania,
	main="Oceanía",
	xlab="Población total (miles)",
	ylab="Nro. países",
	xlim=c(0,1400000),
	ylim=c(0,40)
)