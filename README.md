# Tugas Analisis dan Visualisasi Data

Repositori ini berisi kumpulan tugas tutorial mata kuliah **Analisis dan Visualisasi Data (STSI4204 / MSIM4310)** — Program Studi Sistem Informasi, Universitas Terbuka.

## Struktur Repositori

| Folder | Topik | Deskripsi Singkat |
|---|---|---|
| [`tugas_1`](https://bit.ly/3UltYn7) | Statistika deskriptif & visualisasi dasar | Rata-rata, standar deviasi, scatter plot, histogram, koefisien keragaman |
| [`tugas_2`](https://bit.ly/4gpbIBQ) | Regresi linear sederhana | Histogram distribusi, scatter plot hubungan variabel, regresi linear, uji homoskedastisitas, visualisasi garis regresi |
| [`tugas_3`](https://bit.ly/3SCYdVS) | Dashboard interaktif | Aplikasi visualisasi data cuaca interaktif menggunakan R Shiny (scatter, line, bar plot, dan tabel data interaktif) |

Setiap folder berisi:
- Script R (`.R`) yang dapat dijalankan langsung di RStudio
- Folder `laporan/` berisi soal tutorial dan laporan jawaban dalam format PDF

## Teknologi & Package yang Digunakan

- **R** (base): `mean()`, `sd()`, `plot()`, `hist()`
- **ggplot2** — visualisasi grafik (Grammar of Graphics)
- **dplyr** — manipulasi data
- **broom**, **ggpubr** — pelengkap analisis regresi & anotasi grafik
- **shiny** — framework aplikasi web interaktif
- **plotly** — mengubah grafik ggplot2 menjadi interaktif
- **DT** — tabel data interaktif
- **readxl** — membaca file Excel

## Cara Menjalankan

1. Clone repositori ini:
   ```bash
   git clone https://github.com/dzikrinajauza/Tugas-Analisis-visualisasi-data.git
   ```
2. Buka file `.R` yang diinginkan di RStudio.
3. Pastikan package yang dibutuhkan sudah terinstal (lihat bagian atas tiap script, atau jalankan `install.packages(...)`).
4. Sesuaikan path dataset (`.csv` / `.xlsx`) dengan lokasi file di komputer Anda.
5. Untuk `tugas3-dashboard-shiny`, jalankan `app.R` lalu klik **Run App** di RStudio.

## Mata Kuliah

Analisis dan Visualisasi Data — Universitas Terbuka, Program Studi Sistem Informasi, Fakultas Sains dan Teknologi.
