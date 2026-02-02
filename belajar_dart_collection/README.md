# 📚 Belajar Dart Collection

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Collection](https://img.shields.io/badge/collection-data%20structures-purple?style=for-the-badge)

A simple command-line application designed for learning Collections in Dart.

---

## 📋 Daftar Isi

- [Pengenalan Collection](#-pengenalan-collection)
- [Iterable & Iterator](#-iterable--iterator)
- [List](#-list)
- [Set](#-set)
- [Queue](#-queue)
- [Iterable Method](#-iterable-method)
- [List Method & Operator](#-list-method--operator)
- [Map](#-map)

---

## 🎯 Pengenalan Collection

- Sebelumnya di materi Dart dasar, kita sudah berkenalan dengan tipe data seperti List, Set dan Map
- Semua tipe data tersebut disebut **Collection** atau bisa dibilang adalah kumpulan data
- Di Dart sendiri, terdapat package yang khusus menyediakan class-class untuk tipe data Collection
- Pada kelas ini, kita akan bahas sampai tuntas tentang tipe data Collection tersebut
- 🔗 [Dart Collection Library](https://api.dart.dev/stable/2.17.6/dart-collection/dart-collection-library.html)

---

## 🔄 Iterable & Iterator

### Iterable

- Sebelum kita bahas tentang dart collection, ada satu class yang teman-teman wajib tau, yaitu **Iterable**
- Iterable adalah parent class dari class-class Collection di Dart
- Sederhananya, Iterable adalah kumpulan data yang bisa diakses secara sequential atau satu persatu
- 🔗 [Iterable Class](https://api.dart.dev/stable/2.17.6/dart-core/Iterable-class.html)
- List dan Set adalah kelas turunan dari Iterable

### Iterator

- Salah satu fitur di Dart yang bisa digunakan untuk melakukan iterasi data, atau mengakses data di Iterable satu persatu adalah menggunakan `for in`
- Jika tipe data memiliki property dengan nama iterator dan tipe Iterator, secara otomatis kita bisa menggunakan perulangan `for in`
- Contohnya di Iterable terdapat property iterator, oleh karena itu kita bisa mengakses data di Iterable menggunakan `for in`
- 🔗 [Iterator Class](https://api.dart.dev/stable/2.17.6/dart-core/Iterator-class.html)

### ⚙️ Iterasi Manual

Sebenarnya, ketika kita menggunakan perulangan `for in`, secara tidak langsung kita melakukan perulangan terhadap iterator menggunakan method-method yang tersedia di Iterator:

| Method/Property | Deskripsi                     |
| --------------- | ----------------------------- |
| `moveNext()`    | Berpindah ke data selanjutnya |
| `current`       | Mendapatkan data saat ini     |

---

## 📝 List

- List adalah tipe data yang berisikan kumpulan data yang memiliki index angka
- Tipe data list sudah kita bahas di materi Dart dasar
- Saat membuat list, kita bisa buat dengan ukuran fix (tidak bisa berubah), atau bisa bertambah secara otomatis seiring penambahan data ke list
- 🔗 [List Class](https://api.dart.dev/stable/2.17.6/dart-core/List-class.html)

### 🔗 Linked List

- List di Dart mirip seperti array di bahasa pemrograman lain, untuk mengubah atau mengakses datanya kita menggunakan index
- Di Dart juga tersedia collection bernama **Linked List**, ini adalah implementasi dari struktur data Double Linked List
- 🔗 [LinkedList Class](https://api.dart.dev/stable/2.17.6/dart-collection/LinkedList-class.html)

#### 🎯 Fokus Linked List

- Fokus Linked List adalah pada performa penambahan data dan penghapusan data yang cepat, oleh karena ini di Linked List tidak terdapat operasi pengubahan data menggunakan index seperti di list
- Linked List juga turunan dari Iterable, bukan List

### 📦 Linked List Entry

- Node di Linked List direpresentasikan dalam class `LinkedListEntry`
- Oleh karena itu, jika kita ingin membuat node, kita perlu membuat class turunan `LinkedListEntry`
- Pada class tersebut sudah disediakan implementasi property `next` dan `prev` nya
- 🔗 [LinkedListEntry Class](https://api.dart.dev/stable/2.17.6/dart-collection/LinkedListEntry-class.html)

### 🔒 Unmodifiable List

- Collection list, walaupun kita buat dalam bentuk fix atau growable, data di dalam list tetap bisa kita modifikasi
- Dart menyediakan collection bernama **Unmodifiable List**, yaitu list yang setelah dibuat, data di dalamnya tidak bisa diubah lagi
- Cara menggunakan unmodifiable list adalah dengan cara membungkus list yang sudah kita buat sebelumnya

---

## 🎯 Set

- Set sudah pernah dibahas di materi Dart dasar
- Set adalah collection yang berisikan kumpulan data unique, ketika kita menambahkan data yang sudah ada, maka otomatis data tersebut akan diabaikan

### 🔗 Linked Hash Set

- Saat kita membuat set, implementasi default dari set sendiri adalah class `LinkedHashSet`
- Seperti terlihat dari namanya, LinkedHashSet menggunakan struktur data double linked list sebagai implementasinya
- Hal ini menjadikan, urutan data di set sesuai dengan urutan ketika kita memasukkan data ke set

### 🔢 Hash Set

- Hash Set adalah implementasi set yang tidak menggunakan struktur data double linked list
- Hal ini menyebabkan urutan di hash set tidak tentu, karena tergantung dari hash code data yang kita masukkan
- Hash Set membuat proses insert data menjadi cepat karena tidak perlu melakukan pengecekan satu persatu di double linked list, cukup langsung menggunakan hash code

### 🌳 Splay Tree Set

- Splay Tree Set merupakan implementasi dari set yang menggunakan struktur data tree
- Hal ini menyebabkan data di Splay Tree Set akan secara otomatis berurut sesuai comparator nya, defaultnya adalah ascending

### ⚖️ Comparable

- Comparable adalah sebuah kontrak yang digunakan untuk membuat tipe data yang bisa diurutkan
- Hampir semua tipe data di Dart implement kontrak Comparable, seperti number, String, boolean, dan lain-lain, oleh karena itu, data-data tersebut bisa diurutkan secara otomatis ketika menggunakan SplayTreeSet misalnya
- Bagaimana jika kita ingin membuat class sendiri? Secara default, class kita tidak bisa diurutkan datanya oleh SplayTreeSet, kita wajib implement kontrak Comparable

### 🔄 Comparator

- Secara default, ketika mengurutkan data, SplayTreeSet akan menggunakan Comparable yang terdapat pada datanya
- Bagaimana jika kita ingin memodifikasi cara melakukan pengurutan datanya? Tapi tidak mau mengubah class data tersebut? Atau bahkan tidak bisa mengubahnya, seperti tipe data number, boolean, String dan lain-lain
- Pada kasus ini, kita bisa membuat **Comparator**, yaitu function yang bisa kita gunakan untuk menentukan cara melakukan pengurutan data

### 🔒 Unmodifiable Set

- Sama seperti list, di set pun terdapat class **Unmodifiable Set**, yang digunakan untuk membungkus set agar tidak bisa dimodifikasi lagi

---

## 📚 Queue

- Queue adalah collection implementasi dari struktur data Stack (tumpukan) atau Queue (antrian)
- Queue mirip seperti list, namun yang membedakan, pada queue, modifikasi data bisa dilakukan di depan (head) atau di belakang (tail)

### 📝 List Queue

- List Queue merupakan implementasi default dari queue di Dart
- Saat kita membuat object Queue, sebenarnya kita membuat List Queue

### 🔗 Double Linked Queue

- Double Linked Queue merupakan implementasi dari queue dengan struktur data double linked list
- Sebenarnya penggunaan Double Linked Queue sangat cocok untuk queue, karena struktur data double linked list sangat cepat untuk modifikasi data di awal dan akhir, sehingga cocok untuk queue ataupun stack

---

## ⚙️ Iterable Method

- Sampai saat ini, kita hanya membahas tentang class-class yang terdapat di dart collection, namun belum membahas tentang fitur method apa saja yang dimiliki oleh dart collection
- Sebenarnya di dalam class Iterable, sudah banyak method yang tersedia untuk bisa kita gunakan ketika butuh melakukan operasi terhadap data collection

### ✅ Check Method

- Salah satu yang biasa kita lakukan saat menggunakan collection (list, set, queue dan lain-lain), adalah melakukan pengecekan data
- Iterable memiliki beberapa method untuk melakukan pengecekan data

### 🔍 Filter Method

- Iterable juga memiliki banyak sekali method untuk melakukan filtering data yang terdapat di iterable

### 🔀 Transform Method

- Iterable juga memiliki method untuk melakukan transformasi (mengubah) data menjadi data baru

### 🔄 Convert Method

- Iterable juga memiliki method yang bisa digunakan untuk melakukan konversi tipe data Collection menjadi tipe data lain

### 📊 Iterable Properties

- Selain banyak sekali method yang dimiliki oleh iterable
- Iterable juga memiliki banyak sekali property yang bisa kita gunakan untuk mendapatkan informasi dan data dari iterable

---

## 📝 List Method & Operator

### List Method

- List dan set karena turunan dari Iterable, secara otomatis dapat menggunakan semua method di Iterable
- Namun karena sifat dari list dan set itu berbeda, list sendiri memiliki method lain yang khusus untuk list

### ➕ List Operator

- Selain method, list juga memiliki banyak operator

### 🎯 Set Method

- Selain list, set juga memiliki method yang spesial terdapat di set

---

## 🗺️ Map

- Map sebenarnya mirip dengan tipe data list, dimana memiliki index dan value
- Hanya saja, berbeda dengan list, pada map, kita bisa menentukan data index dengan tipe data dan data index sesuai yang kita mau
- Di map, index disebut **key**
- Detail tentang map sudah kita bahas di materi Dart dasar

### 📦 Map Entry

- Map sendiri bukanlah turunan dari Iterable, oleh karena itu secara default tidak bisa di iterasi menggunakan perulangan `for`
- Namun, map memiliki property bernama `entries`, yang mengembalikan Iterable berisi `MapEntry`
- `MapEntry` adalah gabungan antara satu buah key + value

### 🔢 Hash Map

- Hash Map merupakan implementasi dari map yang tidak menggunakan struktur data double linked list
- Sama seperti Hash Set, urutan key pada Hash Map tidak bisa dijamin berurut

### 🔗 Linked Hash Map

- Linked Hash Map merupakan implementasi dari map yang menggunakan struktur data double linked list
- Hal ini menjadikan Linked Hash Map datanya terurut sesuai dengan urutan memasukkan data ke Linked Hash Map
- **Linked Hash Map merupakan default implementasi untuk Map**

### 🌳 Splay Tree Map

- Splay Tree Map merupakan implementasi dari map yang menggunakan struktur data tree
- Data di Splay Tree Map secara otomatis akan berurut sesuai dengan datanya, atau bisa menggunakan comparator, mirip dengan Splay Tree Set

### 🔒 Unmodifiable Map

- Unmodifiable Map merupakan implementasi map yang tidak bisa diubah lagi
- Cara penggunaannya adalah membungkus map yang sudah ada, dengan `UnmodifiableMap`, sehingga tidak bisa dimodifikasi lagi
