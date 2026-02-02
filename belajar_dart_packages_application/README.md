# 📦 Belajar Dart Packages Application

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Packages](https://img.shields.io/badge/packages-application-orange?style=for-the-badge)

A sample command-line application with an entrypoint in `bin/`, library code in `lib/`, and example unit test in `test/`.

---

## 📋 Daftar Isi

- [Membuat Project Aplikasi](#-membuat-project-aplikasi)
- [Dependency](#-dependency)
- [Import](#-import)
- [Compile](#-compile)
- [Publish ke Pub.dev](#-publish-ke-pubdev)

---

## 🚀 Membuat Project Aplikasi

```bash
dart create --template=console-full belajar_dart_packages_application
```

### ▶️ Menjalankan Aplikasi

```bash
dart run
```

---

## 📥 Dependency

- Ketika kita membutuhkan library di aplikasi Dart, kita bisa tambahkan dependency tersebut di file `pubspec.yaml` pada bagian `dependencies`

### 📦 Download Dependency

Setelah kita tambahkan dependency di file `pubspec.yaml`, selanjutnya kita perlu download dependency tersebut ke local kita dengan perintah:

```bash
dart pub get
```

> 📁 Semua dependency akan di download ke local `HOME/.pub-cache/`

---

## 📎 Import

- Setelah kita menambahkan dan download dependency ke aplikasi, selanjutnya kita bisa gunakan library dependency tersebut menggunakan `import`

### Import As

- Kadang saat melakukan import beberapa packages, ada kalanya terdapat conflict, misal ada function dengan nama yang sama
- Pada kasus seperti ini, kita bisa membuat prefix untuk packages yang kita import menggunakan kata kunci `as`
- Ketika menggunakan `import as`, maka kita wajib menggunakan prefix/alias tersebut sebelum memanggil function atau class

---

## ⚙️ Compile

### Dart Platform

| Platform            | Deskripsi                                                                                                                 |
| ------------------- | ------------------------------------------------------------------------------------------------------------------------- |
| **Native Platform** | Untuk aplikasi dengan target perangkat mobile atau desktop, Dart menyertakan Dart VM dengan JIT compiler dan AOT compiler |
| **Web Platform**    | Untuk aplikasi dengan target web, Dart menyertakan dartdevc (development) dan dart2js (production)                        |

### Cross Operating System

> ⚠️ Dart tidak mendukung kompilasi untuk target sistem operasi berbeda. Jika ingin membuat distribusi file untuk OS berbeda, maka harus dilakukan di OS tersebut.

### 🔨 Dart Compile

```bash
dart compile exe bin/belajar_dart_packages_application.dart
```

---

## 📤 Upgrade Packages

- Melakukan upgrade library adalah hal yang sudah biasa
- Hal yang perlu kita lakukan ketika upgrade library adalah, menaikkan versi dart packages di file `pubspec.yaml`
- Jika menggunakan git, disarankan untuk menambah tag baru untuk versi baru

### Upgrade Dependency

```bash
dart pub upgrade
```

---

## 🌐 Publish ke Pub.dev

- Google telah menyediakan website [pub.dev](https://pub.dev/) untuk menyimpan dart packages
- Untuk menyimpan dart packages di pub.dev, kita harus terverifikasi sebagai publisher

> ⚠️ **Perhatian**: Ketika publish dart packages ke pub.dev, ini akan ada **selamanya**. Kita tidak bisa menghapus yang sudah kita publish.

### Syarat Publish

- Pastikan menambahkan LICENSE file
- Ukuran dart packages tidak lebih dari 100mb

### 🧪 Dry Run

```bash
dart pub publish --dry-run
```

### 🚀 Publish Packages

```bash
dart pub publish
```

---

## 📥 Download Dependency dari Pub.dev

```yaml
dependencies:
  belajar_dart_packages_library: 1.5.0
```
