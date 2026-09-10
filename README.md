# Tugas 4 - Mobile Development (Navigasi & Routing)

Aplikasi ini mendemonstrasikan implementasi navigasi (routing) menggunakan `Navigator.push` dan `BottomNavigationBar` di Flutter. Kode telah di-refactor menggunakan arsitektur modular (dipisah ke dalam folder `screens`).

## Fitur Utama & Struktur Layar
1. **Main Navigation (StatefulWidget):** Mengontrol *Bottom Navigation Bar* untuk berpindah antara tab Beranda dan Profil.
2. **Screen Beranda (StatelessWidget):** Menampilkan daftar layanan/produk IT menggunakan `ListView`. 
3. **Screen Detail (StatefulWidget):** Menampilkan detail produk yang diklik menggunakan `Navigator.push`. Mengimplementasikan perubahan *state* interaktif pada tombol "Tambah ke Wishlist".
4. **Screen Profil (StatelessWidget):** Menampilkan simulasi data `UserModel` sebagai kelanjutan dari modul sebelumnya.

## Cara Setup & Menjalankan Project
1. Clone repository ini ke komputer lokal.
2. Buka folder proyek menggunakan VS Code atau Android Studio.
3. Buka terminal dan jalankan perintah `flutter pub get` untuk mengunduh dependencies.
4. Nyalakan emulator atau sambungkan perangkat HP asli.
5. Jalankan aplikasi dengan perintah `flutter run`.
