# 🎯 Belajar Dart Unit Test

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Testing](https://img.shields.io/badge/testing-unit%20test-green?style=for-the-badge)

A simple command-line application designed for learning Unit Testing in Dart.

## 📋 Daftar Isi

- [Pengenalan Software Testing](#-pengenalan-software-testing)
- [Unit Test](#-unit-test)
- [Persiapan & Instalasi](#-persiapan--instalasi)
- [Membuat & Menjalankan Test](#-membuat--menjalankan-test)
- [Core Concepts (Expect & Matcher)](#-core-concepts-expect--matcher)
- [Lifecycle (Setup, Teardown)](#-lifecycle-setup-teardown)
- [Fitur Lanjutan (Platform, Skip, Tag, Retry)](#-fitur-lanjutan)
- [Package Configuration](#-package-configuration)
- [Mocking dengan Mockito](#-mocking-dengan-mockito)

---

## 🧪 Pengenalan Software Testing

- **Software testing** adalah salah satu disiplin ilmu dalam software engineering.
- Tujuan utama dari software testing adalah memastikan **kualitas kode** dan aplikasi kita baik.
- Ilmu untuk software testing sendiri sangatlah luas, pada materi ini kita hanya akan fokus ke **unit testing**.

## 📦 Unit Test

- Unit test akan fokus menguji bagian kode program **terkecil**, biasanya menguji sebuah method.
- Unit test biasanya dibuat dan dijalankan dengan **cepat**. Oleh karena itu, kadang kode unit test lebih banyak dari kode program aslinya, karena semua skenario pengujian akan dicoba di unit test.
- Unit test bisa digunakan sebagai cara meningkatkan kualitas kode program kita.

---

## 🛠️ Persiapan & Instalasi

### Testing Package

- Dart memiliki package khusus untuk membuat unit test, yaitu package **test**.
- Sebelum kita membuat unit test, kita perlu menambahkan package `test` terlebih dahulu ke project Dart kita.
- 🔗 [Dokumentasi Package Test](https://pub.dev/packages/test)

---

## 🚀 Membuat & Menjalankan Test

### Membuat Test

- Dart memiliki standarisasi untuk struktur folder pembuatan unit test, biasanya dibuat menggunakan nama folder `test`.
- Selanjutnya nama file Dart biasanya akan memiliki akhiran `_test`, misal `contoh_test.dart`.
- Sama seperti ketika membuat aplikasi, saat membuat file unit test, kita juga perlu menambahkan `main` function di file test tersebut.

### Test Function

- Untuk membuat unit test, kita bisa menggunakan function `test` yang terdapat di package `test`.
- Test function tersebut memiliki nama function dan juga anonymous function yang berisi kode unit test-nya.

### Menjalankan Test

Untuk menjalankan file test, kita bisa menggunakan perintah:

```bash
dart test test/namaFile_test.dart
```

Atau jika kita ingin menjalankan **semua** file unit test, kita bisa gunakan perintah:

```bash
dart test
```

Secara otomatis Dart akan menjalankan semua unit test di folder `test`.

---

## 🎯 Core Concepts (Expect & Matcher)

### Expect Function

- Saat kita membuat unit test, salah satu yang paling penting adalah memastikan apakah data yang kita test benar atau salah.
- Hal ini disebut **assertion**.
- Di Dart, untuk melakukan assertion, kita bisa menggunakan function `expect`, dimana terdapat dua parameter:
  1. Data yang akan di test.
  2. Harapan datanya.
- Jika ternyata data tidak sesuai yang diharapkan, maka secara otomatis akan terjadi error yang menyebabkan unit test dianggap **gagal**.

### 🧩 Matcher

#### Matcher Package

- Saat kita membuat assertion pada unit test, pengecekannya tidak hanya menggunakan kondisi _equals_, kadang ada kondisi lain.
- Kita bisa menggunakan **matcher package**, dimana terdapat banyak sekali function dan constant yang bisa kita gunakan untuk mempermudah kita melakukan assertion.
- 🔗 [Dokumentasi Matcher](https://pub.dev/packages/matcher)
- Saat menginstall `test` package, `matcher` package otomatis terinstall, sehingga kita tidak perlu menginstallnya secara manual.

#### Menggunakan Matcher

- 🔗 [Matcher Class Documentation](https://pub.dev/documentation/matcher/latest/matcher/Matcher-class.html)
- Cara penggunaan matcher, kita bisa menggunakannya pada parameter kedua pada `expect` function:
  ```dart
  expect(value, matcher);
  ```

---

## ⚙️ Lifecycle (Setup, Teardown)

### 👥 Group Function

- `group()` function merupakan sebuah function yang bisa digunakan untuk melakukan grouping test function.
- Melakukan grouping lebih bagus dilakukan ketika sebuah file unit test berisikan banyak sekali test function.

### ⬆️ setUp Function

- `setUp` function merupakan sebuah function yang bisa kita gunakan untuk meregistrasi kode yang **selalu dieksekusi setiap kali test function dieksekusi** (sebelum test berjalan).
- `setUp` function cocok sekali ketika kita butuh membuat sebuah kode berulang di awal test function.
- Jika `setUp` function ditempatkan dalam `group` function, maka `setUp` function ini hanya berlaku untuk test function di dalam group tersebut.

### ⬇️ tearDown Function

- Jika `setUp` function dijalankan di awal, maka `tearDown` adalah function yang selalu dieksekusi di **akhir** unit test.
- Cocok untuk melakukan hal yang harus dilakukan setelah semua unit test berjalan (clean up).
- Jika `tearDown` function ditempatkan dalam `group` function, maka `tearDown` function ini hanya berlaku untuk test function di dalam group tersebut.

---

## 🔥 Fitur Lanjutan

### 🖥️ Platform Selector

- Pada beberapa kasus, mungkin kita membuat kode Dart yang dikhususkan untuk platform tertentu (misal OS tertentu).
- Kita bisa menandai sebuah unit test dengan annotation `@TestOn`, untuk memberi tahu bahwa unit test ini untuk platform yang berbeda. Secara otomatis unit test tersebut akan di-skip jika dijalankan di platform yang tidak sesuai.
- Platform selector mendukung operator boolean, seperti `&&`, `||`, dan `!`.

#### 📜 Daftar Platform

| Platform  | Deskripsi                                         |
| --------- | ------------------------------------------------- |
| `vm`      | Test di command line Dart VM                      |
| `chrome`  | Test di browser Chrome                            |
| `firefox` | Test di browser Firefox                           |
| `safari`  | Test di browser Safari                            |
| `ie`      | Test di browser Internet Explorer                 |
| `node`    | Test di NodeJS                                    |
| `browser` | Test di browser apapun                            |
| `js`      | Test yang telah di-compile ke JavaScript          |
| `blink`   | Test di browser yang memiliki Blink render engine |
| `windows` | Test di OS Windows                                |
| `mac-os`  | Test di OS Mac                                    |
| `linux`   | Test di OS Linux                                  |
| `android` | Test di OS Android                                |
| `ios`     | Test di OS iOS                                    |
| `posix`   | Test di OS POSIX                                  |

#### ⚙️ Platform Selector Parameter

- Saat menggunakan annotation `@TestOn`, maka seluruh unit test di file tersebut akan menggunakan platform selector yang sudah ditentukan.
- Kadang, kita hanya ingin beberapa test function atau group function saja. Pada kasus ini kita bisa menambahkan parameter `testOn`.

### ⏭️ Skip Test

- Saat kita membuat unit test, ada kalanya sebuah unit test bermasalah dan belum bisa diperbaiki.
- Pada kasus ini, jangan hapus unit tersebut, tapi tandai unit test tersebut agar tidak dijalankan (skip).
- Kita bisa menggunakan annotation `@Skip` untuk menandai sebuah file unit test agar di-skip.

#### ⚙️ Skip Parameter

- Menggunakan annotation `@Skip` secara otomatis akan melakukan skip seluruh test di file tersebut.
- Kadang, ada kalanya kita ingin melakukan skip satu buah test function atau group function.
- Kita bisa menambahkan object parameter `skip` pada test function dan group function.

### 🏷️ Tag

- Kita bisa menambahkan tag terhadap unit test menggunakan annotation `@Tags` atau parameter `tags`.
- Ini berguna untuk menjalankan unit test dengan tag tertentu saja.
- Contoh perintah:
  ```bash
  dart test --tags "tag_name"
  ```

### 🔄 Retry Test

- Kadang unit test tidak stabil (flaky) karena faktor eksternal (network, DB).
- Dart memiliki fitur untuk melakukan retry ketika unit test gagal.
- Gunakan annotation `@Retry` untuk melakukan retry otomatis.

#### ⚙️ Retry Parameter

- Jika hanya ingin retry pada test atau group function tertentu, gunakan named parameter `retry`.

### 💻 Platform Specific Configuration

- Annotation `@OnPlatform` digunakan untuk konfigurasi spesifik platform (misal skip hanya di mac-os).

#### ⚙️ Platform Specific Parameter

- Gunakan named parameter `onPlatform` pada test/group function.

---

## 📦 Package Configuration

- Kita bisa menggunakan file `dart_test.yaml` untuk mengatur konfigurasi unit test secara global untuk satu package.
- 🔗 [Dokumentasi Konfigurasi](https://github.com/dart-lang/test/blob/master/pkgs/test/doc/configuration.md)

---

## 🎭 Mocking dengan Mockito

### Mock Object

- Mock object adalah object tiruan yang tingkah lakunya bisa kita atur.
- Digunakan untuk meniru object yang sulit di-test langsung (misal API call, Database).

### 💡 Contoh Kasus

- **BookRepository**: Class untuk manipulasi data (DB/API).
- **BookService**: Class business logic.

### 🦜 Mockito

- Dart menyediakan package `mockito` untuk membuat mock object.
- 🔗 [Dokumentasi Mockito](https://pub.dev/packages/mockito)

### 📥 Menginstall Mockito

Perlu menambahkan package:

1. `mockito`
2. `build_runner` (untuk generate code)
   🔗 [Dokumentasi Build Runner](https://pub.dev/packages/build_runner)

### 🛠️ Membuat Mock Object

1. Beritahu mockito untuk membuat mock object dengan annotation `@GenerateNiceMocks`.
2. Import file dengan format: `namafile_test.mocks.dart`.
3. Jalankan command:
   ```bash
   dart run build_runner build
   ```

### ✅ Verifikasi Mock Object

- Gunakan function `verify` untuk memastikan bahwa mock object benar-benar dipanggil.
- **Why?** Jika kode yang memanggil dependency dihapus, unit test mock bisa tetap sukses jika tidak diverifikasi interaksinya.

### 📞 Called Function

- Gunakan `called()` setelah `verify` untuk memastikan jumlah eksekusi.
  ```dart
  verify(mockObject.method()).called(1);
  ```

### 🧱 Stubbing

- Mengubah tingkah laku mock object (misal return value tertentu).
- Gunakan `when` dan `thenReturn`, `thenAnswer`, atau `thenThrow`.

### 🧩 Argument Matcher

- Mendukung matcher saat stubbing atau verifikasi.
- Gunakan `any` untuk argumen apapun, atau `argThat(matcher)`.
