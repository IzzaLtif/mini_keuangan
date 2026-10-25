# Mini Keuangan

Mini Keuangan adalah aplikasi Flutter sederhana untuk mencatat pemasukan dan pengeluaran. Aplikasi ini memiliki tiga layar utama, yaitu Home untuk melihat daftar transaksi, Tambah Transaksi untuk memasukkan data baru, dan Ringkasan untuk melihat total pemasukan, total pengeluaran, serta saldo.

Pada halaman Tambah Transaksi, pengguna dapat mengisi nama transaksi, jumlah uang, dan memilih jenis transaksi berupa pemasukan atau pengeluaran. Form juga memiliki validasi sehingga data tidak dapat disimpan apabila input wajib masih kosong. Setelah transaksi disimpan, data akan langsung ditambahkan ke daftar transaksi pada halaman Home menggunakan `setState()`.

## Bug yang Pernah Ditemui

Saat proses pembuatan aplikasi, sempat terjadi error pada file `home_screen.dart` dengan pesan **"Can't find '}' to match '{'"**. Error tersebut terjadi karena struktur tanda kurung kurawal `{}` pada kode belum sesuai.

Untuk menemukan masalahnya, saya melihat pesan error pada terminal yang menunjukkan lokasi masalah di bagian `_HomeScreenState`. Kemudian isi `home_screen.dart` diperiksa kembali dan dirapikan. Setelah struktur kode diperbaiki dan file disimpan, aplikasi dijalankan kembali menggunakan Flutter Web. Setelah itu aplikasi dapat berjalan normal dan `flutter analyze` menunjukkan **No issues found!**.

## Teknologi

- Flutter
- Dart
- Flutter Web
- Material Design

## Fitur

- Menampilkan daftar transaksi
- Menambahkan transaksi baru
- Validasi input form
- Memilih jenis transaksi
- Menghitung total pemasukan
- Menghitung total pengeluaran
- Menghitung saldo
- Navigasi antar halaman
