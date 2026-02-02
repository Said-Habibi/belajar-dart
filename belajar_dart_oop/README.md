# 🏗️ Belajar Dart OOP

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![OOP](https://img.shields.io/badge/OOP-object%20oriented-red?style=for-the-badge)

A sample command-line application with an entrypoint in `bin/`, library code in `lib/`, and example unit test in `test/`.

---

## 📋 Daftar Isi

- [Pengenalan OOP](#-pengenalan-oop)
- [Class dan Object](#-class-dan-object)
- [Field dan Method](#-field-dan-method)
- [Constructor](#-constructor)
- [Inheritance](#-inheritance)
- [Polymorphism](#-polymorphism)
- [Abstract Class dan Interface](#-abstract-class-dan-interface)
- [Mixin](#-mixin)
- [Object Class Methods](#-object-class-methods)
- [Exception dan Error](#-exception-dan-error)
- [Metadata](#-metadata)

---

## 🎯 Pengenalan OOP

### Apa itu Object Oriented Programming?

- Object Oriented Programming adalah sudut pandang bahasa pemrograman yang berkonsep "objek"
- Ada banyak sudut pandang bahasa pemrograman, namun OOP adalah yang sangat populer
- Ada beberapa istilah yang perlu dimengerti dalam OOP, yaitu: **Objek** dan **Class**

### Apa itu Objek?

- Objek adalah data yang berisi **field/properties/attributes** dan **method/function/behavior**
- Semua data di Dart adalah objek

### Apa itu Class?

- Class adalah blueprint, prototype atau cetakan untuk membuat objek
- Class berisikan deklarasi semua properties dan functions yang dimiliki oleh objek
- Setiap objek selalu dibuat dari class
- Dan sebuah class bisa membuat objek tanpa batas

---

## 📦 Class dan Object

### Membuat Class

- Untuk membuat class, kita bisa menggunakan kata kunci `class`
- Penamaan class biasa menggunakan format **PascalCase**

### Membuat Objek

- Objek adalah hasil instansiasi dari sebuah class
- Untuk membuat objek kita bisa menggunakan nama class lalu diikuti dengan kurung `()`

---

## 📝 Field dan Method

### Field

- Field/properties/attributes adalah data yang bisa kita sisipkan di dalam objek
- Namun sebelum kita bisa memasukkan data di fields, kita harus mendeklarasikan data apa saja yang dimiliki objek tersebut di dalam deklarasi class
- Membuat field sama seperti membuat variable, namun ditempatkan di block class
- Field wajib dimasukkan nilainya, kecuali field yang nullable

### Memanipulasi Field

- Field yang ada di objek, bisa kita manipulasi, tergantung final atau bukan
- Jika final, berarti kita tidak bisa mengubah data field nya, namun jika tidak, kita bisa mengubah field nya
- Untuk mengakses field, kita butuh kata kunci `.` (titik) setelah nama objek dan diikuti nama fieldnya

### Method

- Selain menambahkan field, kita juga bisa menambahkan method ke objek
- Method adalah function yang terdapat di dalam class
- Untuk mengakses method tersebut, kita bisa menggunakan tanda titik `.` dan diikuti dengan nama method nya

### Extension Method

- Extension method adalah cara menambahkan method terhadap class yang sudah ada, tanpa harus mengubah class tersebut
- Hal ini bermanfaat jika misal class nya adalah milik library yang bukan milik kita

### Operator

- Operator adalah method dengan nama yang spesial
- Dart memperbolehkan kita membuat method dengan nama operator

---

## 🔧 Constructor

### Constructor

- Saat kita membuat objek, maka kita seperti memanggil sebuah method, karena kita menggunakan kurung `()`
- Di dalam class, kita bisa membuat constructor, constructor adalah method yang akan dipanggil saat pertama kali objek dibuat
- Nama constructor harus sama dengan nama class, dan tidak membutuhkan kata kunci void atau return value

### Variable Shadowing

- Variable shadowing adalah kejadian ketika membuat nama variable dengan nama yang sama di scope yang menutupi variable dengan nama yang sama di scope diatasnya

### This Keyword

- Saat kita membuat kode di dalam block constructor atau method di dalam class, kita bisa menggunakan kata kunci `this` untuk mengakses objek saat ini

### Initializing Formal Parameter

- Kadang saat membuat constructor, biasanya kita membuat parameter yang hanya bisa digunakan untuk mengubah nilai yang ada di field
- Caranya kita cukup ubah parameternya dengan menggunakan `this.namaField` nya

### Named Constructor

- Constructor hanya bisa dibuat satu saja, namun terdapat fitur yang bernama named constructor, yaitu constructor dengan nama yang berbeda
- Untuk membuatnya kita bisa menggunakan `NamaClass.namaConstructor`

### Redirecting Constructor

- Saat membuat named constructor, kita bisa memanggil default constructor, atau istilahnya adalah melakukan redirecting constructor

### Constant Constructor

- Saat kita membuat class yang tidak pernah berubah datanya (immutable data), ada baiknya kita buat constructor nya dalam bentuk constant
- Untuk membuat constant constructor kita bisa gunakan kata kunci `const`

### Factory Constructor

- Factory constructor adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat objek baru, namun logika cara pembuatan objek barunya bisa kita sesuaikan
- Untuk membuat factory constructor kita bisa menggunakan kata kunci `factory`

### Cascade Notation

- Cascade notation merupakan operator yang bisa kita gunakan untuk memberikan beberapa operasi pada objek yang sama
- Ada dua jenis cascade notation: `..` dan `?..`

---

## 🧬 Inheritance

### Inheritance

- Inheritance atau pewarisan adalah kemampuan untuk menurunkan sebuah class ke class lain
- Class child hanya bisa punya satu class parent, namun satu class parent bisa punya banyak class child
- Untuk melakukan pewarisan, di class child, kita harus menggunakan kata kunci `extends`

### Method Overriding

- Method overriding adalah kemampuan mendeklarasikan ulang method di child class, yang sudah ada di parent class

### Field Overriding

- Field overriding adalah kemampuan mendeklarasikan ulang field di child class, yang sudah ada di parent class

### Super Keyword

- Kata kunci `super` digunakan untuk mengakses class parent

### Super Constructor

- Kata kunci super juga bisa digunakan untuk mengakses constructor parent class

### Object Class

- Setiap class yang kita buat secara otomatis adalah turunan dari class Object, kecuali null
- 🔗 [Object Class](https://api.dart.dev/dart-core/Object-class.html)

---

## 🔄 Polymorphism

### Polymorphism

- Polymorphism berasal dari bahasa Yunani yang berarti banyak bentuk
- Dalam OOP, polymorphism adalah kemampuan sebuah object berubah bentuk menjadi bentuk lain

### Type Check & Casts

- Untuk melakukan type check, kita bisa menggunakan kata kunci `is`
- Untuk melakukan konversi tipe data objek, kita bisa gunakan kata kunci `as`

### Import

- Import adalah kemampuan untuk menggunakan class, atau function atau variable yang berada di file yang berbeda

---

## 📐 Abstract Class dan Interface

### Abstract Class

- Abstract class adalah class yang tidak bisa dibuat sebagai objek secara langsung, hanya bisa diturunkan
- Untuk membuat sebuah class menjadi abstract, kita bisa menggunakan kata kunci `abstract`

### Abstract Method

- Saat kita membuat class yang abstract, kita bisa membuat abstract method juga di dalam class abstract tersebut
- Abstract method wajib di override di class child

### Access Modifier

- Untuk menyembunyikan akses field atau method, kita bisa menambahkan `_` (underscore) di awal field atau method

### Encapsulation

- Encapsulation artinya memastikan data sensitif sebuah objek tersembunyi dari akses luar

### Getter and Setter

- Getter adalah function yang dibuat untuk mengambil data field
- Setter adalah function yang dibuat untuk mengubah data field

### Interface

- Interface mirip seperti abstract class, yang membedakan adalah di interface, semua method otomatis abstract
- Untuk mewariskan interface, kita menggunakan kata kunci `implements`

### Multiple Interface Inheritance

- Kita bisa melakukan implements terhadap beberapa class menggunakan pemisah tanda koma

---

## 🧩 Mixin

### Mixin

- Mixin merupakan reusable code yang digunakan di kelas lain tanpa perlu terkendala dengan pewarisan
- Untuk membuat mixin, kita bisa menggunakan kata kunci `mixin`
- Untuk menggunakan mixin, kita bisa menggunakan kata kunci `with`

### Membatasi Mixin

- Jika kita ingin membatasi hanya class turunan tertentu, kita bisa tambahkan kata kunci `on`

---

## 🔧 Object Class Methods

### toString Method

- Method `toString()` merupakan method untuk representasi String dari object
- Contohnya, saat kita menggunakan function `print(object)`, sebenarnya yang dipanggil adalah `print(object.toString())`

### Equals Operator

- Untuk membandingkan dua buah object apakah sama atau tidak, biasanya kita menggunakan operator `==`
- Kita bisa melakukan override operator `==`

### HashCode Getter

- HashCode getter adalah representasi integer object kita
- HashCode sangat bermanfaat untuk membuat struktur data unique seperti HashMap, HashSet

### NoSuchMethod

- NoSuchMethod merupakan sebuah method yang bisa kita override untuk mendeteksi ketika sebuah method yang tidak ada dipanggil
- 🔗 [noSuchMethod](https://api.dart.dev/stable/3.5.4/dart-core/Object/noSuchMethod.html)

### Callable Class

- Callable class merupakan class yang dipanggil seperti function
- Untuk membuat callable class, kita perlu menambahkan sebuah method bernama `call()`

### Typedef

- Typedef merupakan fitur dimana kita membuat alias untuk tipe data lainnya

### Static

- Static merupakan kata kunci yang digunakan untuk membuat field dan method yang bisa diakses tanpa harus membuat object nya

### Enum

- Enum merupakan fitur membuat tipe data yang sudah jelas nilainya

---

## ⚠️ Exception dan Error

### Exception

- Error direpresentasikan dengan istilah exception
- Untuk membuat sebuah exception, kita bisa menggunakan kata kunci `throw`

### Membuat Class Exception

- Sangat direkomendasikan jika membuat class exception baru, kita melakukan implements ke class Exception

### Try Catch

- Untuk menangkap exception, kita bisa menggunakan `try-catch`

### Finally

- Block finally adalah block dimana akan selalu dieksekusi baik terjadi exception ataupun tidak

### Stack Trace

- Untuk mengetahui posisi/lokasi terjadinya error, kita bisa menambahkan parameter kedua pada catch
- 🔗 [StackTrace Class](https://api.dart.dev/dart-core/StackTrace-class.html)

### Error

- Berbeda dengan exception, error adalah jenis kesalahan yang harus dihindari
- 🔗 [Error Class](https://api.dart.dev/stable/3.3.1/dart-core/Error-class.html)

---

## 🏷️ Metadata

### Metadata

- Metadata merupakan fitur yang digunakan untuk menambah informasi tambahan pada kode program
- Untuk menambahkan metadata, kita bisa menggunakan annotation yang dimulai dengan karakter `@`

### Membuat Annotation

- Membuat annotation sangat mudah, kita bisa membuat constant atau bisa membuat class dengan menggunakan constant constructor
