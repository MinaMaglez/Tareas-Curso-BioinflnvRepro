##Cargamos el archivo maizteocintle_SSNP50k_meta_extended.txt
##El tipo de archivo que se genera es un data frame a partir de un un archivo en formato .txt

fullmat <- read.delim("../meta/maizteocintle_SNP50k_meta_extended.txt", header = TRUE, stringsAsFactors = FALSE, check.names = F)
str(fullmat)

##Cambiar nombre de la columna "Año de colecta" por Fecha_de_colecta

colnames(fullmat)[which(names(fullmat) == "AÌ±o._de_colecta")] <- "Fecha_de_colecta"

##Ver las primeras 6 lineas del archivo

head(fullmat)

##Numero de muestras

nrow(fullmat)

##Estados donde se colectaron las muestras

xtabs(~Estado, data = fullmat)

##Muestras colectadas antes de 1980

fecha<- xtabs(~Origen, data = fullmat)

##Muestras por cada raza

xtabs(~Raza_Primaria, data = fullmat)

##Promedio de altitud a la que se encontraron las muestras

mean(Altitud)

##Maximo y minimo de altitud a la que se encontraron las muestras

range(Altitud)

##Nueva df solo con las muestras de la raza Olotillo


##Nueva df solo co las muestras de la raza Reventador, Jala y Ancho


##Escribir la matriz anterior en "submat.cvs" en /meta
