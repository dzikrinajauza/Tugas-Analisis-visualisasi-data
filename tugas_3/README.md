# Tugas 3 — Aplikasi Visualisasi Data Cuaca Interaktif (R Shiny)

## Soal
Membuat aplikasi visualisasi data interaktif menggunakan Shiny yang memungkinkan pengguna memilih:
1. Variabel yang ingin divisualisasikan
2. Jenis plot: (a) scatter plot interaktif, (b) line plot interaktif, (c) bar plot interaktif, (d) tabel data

Detail soal lengkap: https://bit.ly/4y9l8r1

## Isi Folder
- `app.R` — source code aplikasi Shiny (UI + server logic)
- `laporan/laporan_tugas3.pdf` — laporan lengkap: latar belakang, landasan teori, source code, analisis output, dan kesimpulan

## Cara Menjalankan
```r
install.packages(c("shiny", "readxl", "ggplot2", "plotly", "DT"))
library(shiny)
runApp("app.R")
```
Pastikan file dataset `DataSetTugas3.xlsx` berada di direktori yang sama dengan `app.R` (dataset asli tidak disertakan dalam repo ini).

## Fitur Aplikasi
- **Scatter Plot Interaktif** — melihat korelasi dua variabel kontinu (contoh: MinTemp vs MaxTemp)
- **Line Plot Interaktif** — melihat tren kontinu antar titik pengamatan
- **Bar Plot Interaktif** — melihat distribusi/sebaran satu variabel (contoh: Sunshine)
- **Tabel Data** — tabel interaktif dengan fitur pencarian dan pagination (menggunakan package DT)

## Package Utama
`shiny`, `readxl`, `ggplot2`, `plotly`, `DT`
