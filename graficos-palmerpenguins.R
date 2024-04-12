# Este programa genera diferentes tipos de gráficos para el conjunto de datos penguins, 
# contenido en el paquete palmerpenguins (https://allisonhorst.github.io/palmerpenguins/). 
# Este conjunto de datos incluye mediciones para tres especies diferentes de pingüinos 
# que habitan en las islas Palmer, en las cercanías de la Antártida.

# Preparativos
# Si no está instalado, primero debe instalarse el paquete palmerpenguins con la instrucción:
# install.packages("palmerpenguins")

# Carga del paquete
library(palmerpenguins)

# Apertura del archivo PDF de salida
pdf("graficos-palmerpenguins.pdf")


# Gráfico de dispersión
plot(
  x = penguins$flipper_length_mm, 
  y = penguins$body_mass_g,
  main = "Relación entre la longitud de la aleta y la masa corporal",
  xlab = "Longitud de la aleta (mm)",
  ylab = "Masa corporal (g)",
)

# Conteo de la cantidad de pingüinos por especie
cantidad_pinguinos_x_especie <- table(penguins$species)

# Gráfico de barras
barplot(
  height = cantidad_pinguinos_x_especie,
  main = "Cantidad de pingüinos por especie",
  xlab = "Especie",
  ylab = "Cantidad de pingüinos",
)

# Gráfico de pastel
pie(
  x = cantidad_pinguinos_x_especie,
  main = "Distribución de individuos por especie",
  labels = paste(
    names(cantidad_pinguinos_x_especie), 
    ":", 
    cantidad_pinguinos_x_especie
  )
)

# Histograma
hist(
  x = penguins$flipper_length_mm,
  breaks = 8,
  main = "Distribución de las mediciones de la longitud de la aleta",
  xlab = "Longitud de la aleta (mm)",
  ylab = "Frecuencia"
)


# Cierre del archivo PDF de salida
dev.off()