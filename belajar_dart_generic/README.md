# 🧬 Belajar Dart Generic

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Generic](https://img.shields.io/badge/generic-type%20safety-blue?style=for-the-badge)

A sample command-line application with an entrypoint in `bin/`, library code in `lib/`, and example unit test in `test/`.

---

## 📋 Daftar Isi

- [Pengenalan Generic](#-pengenalan-generic)
- [Generic Class](#-generic-class)
- [Generic Function](#-generic-function)
- [Bounded Type Parameter](#-bounded-type-parameter)
- [Dynamic](#-dynamic)
- [Covariant](#-covariant)
- [Type Checking](#-type-checking)

---

## 🎯 Pengenalan Generic

- Generic adalah kemampuan menambahkan **parameter type** saat membuat class atau method
- Berbeda dengan tipe data yang biasa kita gunakan di class, di function, generic memungkinkan kita bisa mengubah-ubah bentuk tipe data sesuai dengan yang kita mau

### 💡 Manfaat Generic

- Pengecekan ketika proses kompilasi
- Tidak perlu manual menggunakan tipe data dan konversi tipe data
- Memudahkan programmer membuat kode program yang generic sehingga bisa digunakan oleh berbagai tipe data

---

## 📦 Generic Class

- Generic class adalah class yang memiliki parameter type
- Tidak ada ketentuan dalam pembuatan generic parameter type, namun biasanya kebanyakan orang menggunakan **1 karakter** sebagai generic parameter type
- Nama generic parameter type yang biasa digunakan adalah:
  - `E` - Element (biasa digunakan di collection atau struktur data)
  - `K` - Key
  - `N` - Number
  - `T` - Type
  - `V` - Value
  - `S, U, V, etc` - 2nd, 3rd, 4th types

### 🔢 Multiple Parameter Type

- Parameter type di generic class boleh lebih dari satu
- Namun harus menggunakan nama type berbeda
- Ini sangat berguna ketika kita ingin membuat generic parameter type yang banyak

---

## ⚡ Generic Function

- Generic parameter type tidak hanya bisa digunakan pada class
- Kita juga bisa menggunakan generic parameter type di function
- Generic parameter type yang kita deklarasikan di function, hanya bisa diakses di function tersebut, tidak bisa digunakan di luar function
- Ini cocok jika kita ingin membuat generic function, tanpa harus mengubah deklarasi class

---

## 🚧 Bounded Type Parameter

- Kadang kita ingin membatasi data yang boleh digunakan di generic parameter type
- Kita bisa menambahkan **constraint** di generic parameter type dengan menyebutkan tipe yang diperbolehkan
- Secara otomatis, tipe data yang bisa digunakan adalah type yang sudah kita sebutkan, atau class-class turunannya
- Secara default, constraint type untuk generic parameter type adalah `Object`, sehingga semua tipe data bisa digunakan

---

## 🌀 Dynamic

- Kadang ada kasus kita tidak peduli dengan generic parameter type pada object
- Misal kita hanya ingin mem-print data T, tidak peduli tipe apapun
- Jika kita mengalami kasus seperti ini, kita bisa menggunakan `dynamic`
- Dynamic bisa dibuat dengan menghapus tipe data generic nya
- Semua tipe data generic otomatis menjadi tipe data dynamic ketika menggunakan fitur ini

---

## 🔄 Covariant

- Covariant artinya kita bisa melakukan substitusi subType (child) dengan superType (parent)
- Namun hati-hati ketika melakukan covariant, karena jika sampai salah mengubah datanya, maka akan terjadi error pada saat **runtime**, tidak akan terdeteksi ketika proses compile

---

## ✅ Type Checking

- Generic di Dart mendukung **Type Checking**, berbeda dengan Java yang menggunakan fitur type erasure, yang artinya ketika di-compile, informasi generic nya dihilangkan
- Pada Dart, semua informasi generic tetap ada
- Oleh karena itu kita bisa melakukan Type Checking di Dart walaupun sampai ke level parameterized type nya
