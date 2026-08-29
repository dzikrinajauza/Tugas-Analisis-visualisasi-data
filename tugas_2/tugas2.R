# NAMA : DZIKRINA JAUZA HASNA
# jURUSAN : SISTEM INFORMASI 

install.packages("ggplot2") 
install.packages("dplyr") 
install.packages("broom") 
install.packages("ggpubr") 
install.packages("readxl")
library(ggplot2) 
library(dplyr) 
library(broom) 
library(ggpubr)
library(readxl)

data_raw <- read_excel("dataPendapatan.xlsx")

head(data_raw)

# Transformasi data: pendapatan dikali 10.000
data_final <- data_raw %>% 
  mutate(pendapatan = pendapatan * 10000)

# Paksa kolom menjadi numerik agar bisa dihitung regresinya
data_final$kebahagiaan <- as.numeric(data_final$kebahagiaan)
data_final$pendapatan <- as.numeric(data_final$pendapatan)

# a. Histogram untuk cek distribusi normal variabel terikat (pendapatan)
ggplot(data_final, aes(x = pendapatan)) +
  geom_histogram(fill = "steelblue", color = "white", bins = 10) +
  labs(title = "Histogram Pendapatan", x = "Pendapatan", y = "Frekuensi")

# b. Scatter plot untuk cek hubungan linear
ggplot(data_final, aes(x = kebahagiaan, y = pendapatan)) +
  geom_point(color = "darkred") +
  labs(title = "Scatter Plot Kebahagiaan vs Pendapatan", 
       x = "Tingkat Kebahagiaan", y = "Pendapatan")

# c. Melakukan regresi linear sederhana
model_regresi <- lm(pendapatan ~ kebahagiaan, data = data_final)
summary(model_regresi) 

# d. Cek Homoskedastisitas menggunakan plot residual
plot(model_regresi, which = 1)

# e. Visualisasi Hasil Regresi Lengkap (Versi Stabil)
ggplot(data_final, aes(x = kebahagiaan, y = pendapatan)) +
  geom_point(alpha = 0.5, color = "black") + 
  geom_smooth(method = "lm", color = "blue", se = TRUE) + 
  stat_regline_equation(label.y = max(data_final$pendapatan, na.rm = TRUE) * 0.95) + 
  stat_cor(label.y = max(data_final$pendapatan, na.rm = TRUE) * 0.85) +
  labs(title = "Analisis Regresi: Pengaruh Kebahagiaan terhadap Pendapatan",
       x = "Tingkat Kebahagiaan (X)", 
       y = "Total Pendapatan (Y)") +
  theme_minimal()