# Tugas 1 — Statistika Dasar & Visualisasi Data Kecepatan Mobil

## Soal
Menggunakan data kecepatan mobil dan jarak berhenti untuk:
1. Menghitung rata-rata kecepatan, rata-rata jarak, dan standar deviasi jarak.
2. Membuat scatter plot (kecepatan vs jarak) dan histogram (kecepatan), lalu menginterpretasikannya.
3. Menghitung koefisien keragaman nilai ujian Matematika dan Bahasa Inggris.

Detail soal lengkap: https://bit.ly/4xw0n9b

## Isi Folder
- `tugas1.R` — script R untuk seluruh perhitungan dan plot
- `laporan/laporan_tugas1.pdf` — laporan hasil kerja lengkap dengan output dan interpretasi

## Catatan Dataset
Script membaca data dari `Tabel_Tugas1.csv` (kolom `Kecepatan..km.h.` dan `Jarak..meter.`). File CSV asli tidak disertakan; buat file tersebut sesuai tabel data pada soal, atau sesuaikan path pada baris `read.csv(...)`.

## Ringkasan Hasil
- Rata-rata kecepatan/jarak: **42.28**
- Standar deviasi jarak: **24.77**
- Scatter plot menunjukkan hubungan linear positif antara kecepatan dan jarak berhenti.
- Histogram kecepatan menunjukkan frekuensi tertinggi pada rentang 15–20 km/h.
- Koefisien keragaman Matematika: **13.33%**, Bahasa Inggris: **11.43%**.

