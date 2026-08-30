# Tugas 2 — Regresi Linear Sederhana (Kebahagiaan vs Pendapatan)

## Soal
Melakukan regresi linear sederhana terhadap dataset kebahagiaan dan pendapatan, meliputi:
1. Histogram distribusi variabel terikat (pendapatan) + interpretasi
2. Scatter plot hubungan variabel bebas & terikat + interpretasi
3. Regresi linear sederhana + interpretasi hasil
4. Uji homoskedastisitas menggunakan `plot(model)`
5. Visualisasi hasil regresi (titik data, garis regresi, persamaan garis, judul & label)

Detail soal lengkap: https://bit.ly/4yb4U0K

## Isi Folder
- `tugas2.R` — script R lengkap (ggplot2, dplyr, broom, ggpubr)
- `laporan/laporan_tugas2.pdf` — laporan hasil kerja lengkap dengan output dan interpretasi

## Catatan Dataset
Script membaca data dari `dataPendapatan.xlsx` (kolom `kebahagiaan` dan `pendapatan`, nilai pendapatan dikalikan 10.000 sesuai instruksi soal). File Excel asli tidak disertakan; sesuaikan path pada `read_excel(...)`.

## Ringkasan Hasil
- Persamaan regresi: **y = 6100x + 2.2 × 10¹³**
- P-value < 2.2 × 10⁻¹⁶ → variabel kebahagiaan berpengaruh signifikan terhadap pendapatan
- R² = 0.2586 → kebahagiaan menjelaskan 25.86% variasi pendapatan
- Plot residual vs fitted menunjukkan asumsi homoskedastisitas secara umum terpenuhi
