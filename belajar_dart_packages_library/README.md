# 📚 Belajar Dart Packages Library

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Library](https://img.shields.io/badge/library-packages-green?style=for-the-badge)

---

## 📋 Daftar Isi

- [Pengenalan Dart Packages](#-pengenalan-dart-packages)
- [Membuat Dart Library](#-membuat-dart-library)
- [Struktur Directory](#-struktur-directory)
- [Pubspec](#-pubspec)
- [Membuat & Export Library](#-membuat--export-library)
- [Publish ke GitHub](#-publish-ke-github)

---

## 🎯 Pengenalan Dart Packages

### Dart Packages

- Ekosistem Dart menggunakan packages untuk melakukan manajemen software yang bisa di sharing, seperti library atau tool
- Saat kita membuat project di Dart, sebenarnya secara tidak langsung kita membuat packages
- Packages bisa dalam bentuk **aplikasi** atau **library** (yang digunakan pada aplikasi)

### 💡 Keuntungan Menggunakan Packages

- Dengan menggunakan packages, kita akan mengikuti cara management kode Dart
- Dengan packages juga bisa melakukan dependency management secara otomatis tanpa harus download library yang kita butuhkan secara manual

---

## 🚀 Membuat Dart Library

```bash
dart create --template=package-simple belajar_dart_packages_library
```

---

## 📁 Struktur Directory

Salah satu keuntungan menggunakan packages adalah struktur directory yang standard untuk project Dart.

### Struktur Minimal

| Path           | Deskripsi                          |
| -------------- | ---------------------------------- |
| `pubspec.yaml` | Konfigurasi dart packages          |
| `lib/`         | Folder menyimpan kode program dart |

### 📂 Directory `src`

- Salah satu best practice di dart packages adalah, tidak mengekspos kode dart kecuali memang dibutuhkan
- Biasanya kode program dart akan ditempatkan di folder `src` di dalam folder `lib`
- Semua kode program dart di dalam `src`, secara default **tidak diekspos** ke luar
- Ketika kita butuh mengekspos keluar, maka biasanya dilakukan secara eksplisit di kode dart di dalam folder `lib`

---

## 📝 Pubspec

- Saat kita membuat dart packages, hal yang paling utama adalah file `pubspec.yaml`
- `pubspec.yaml` merupakan konfigurasi dari dart packages
- Di dalam pubspec, kita perlu tentukan nama dart packages yang kita buat, termasuk dependency yang kita butuhkan

---

## 🔧 Membuat & Export Library

### Membuat Library

- Saat membuat kode dart di dart packages, disarankan lakukan di dalam folder `src`
- Jangan import dari folder `src`, karena kode dart di `src` biasanya digunakan sebagai internal library

### Export Library

- Setelah membuat kode dart di dalam folder `src`, kita bisa buat kode dart di `lib` yang digunakan untuk mengekspos bagian mana yang ingin kita ekspos
- Gunakan kata kunci `export` untuk mengekspos semua kode, atau `export show` jika hanya beberapa saja
- Tambahkan kata kunci `library` diikuti dengan nama library (walaupun tidak wajib, tapi direkomendasikan)

### Import Library

Setelah membuat library, kita bisa melakukan import dengan pola:

```dart
package:name_library/file.dart
```

---

## 📤 Publish ke GitHub

- Setelah membuat library menggunakan dart packages, kita bisa menyimpannya di Git server, contohnya GitHub
- Dart packages terintegrasi dengan baik dengan Git, sehingga kita bisa menambahkan library yang sudah kita buat ke aplikasi melalui Git

---

## ✨ Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## 🚀 Getting Started

TODO: List prerequisites and provide or point to information on how to start using the package.

## 📖 Usage

```dart
const like = 'sample';
```

## ℹ️ Additional Information

TODO: Tell users more about the package: where to find more information, how to contribute to the package, how to file issues, what response they can expect from the package authors, and more.
