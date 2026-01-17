A simple command-line application.

Pengenalan Software Testing 
- Software testing adalah salah satu disiplin ilmu dalam software engineering
- tujuan utama dari software testing adalah memastikan kualitas kode dan aplikasi kita baik
- ilmu untuk software testing sendiri sangatlah luas, pada materi ini kita hanya akan fokus ke unit testing

Unit Test
- unit test akan fokus menguki bagian kode program terkecil, biasanya menguji sebuah method
- unit test biasanya dibuat dan cepat, oleh karena itu biasanya kadang kode unit test lebih banyak dari kode program aslinya, karena semua skenario pengujian akan dicoba di unit test
- unit test bisa digunakan sebagai cara meningkatkan kualitas kode program kita

Testing Package
- dart memiliki package khusu untuk membuat unit test, yaitu package test
- sebelum kita membuat unit test, kita perlu menambahkan package test terlebih dahulu ke project dart kita
- https://pub.dev/packages/test

Membuat Test
- dart memiliki standarisasi untuk struktur folder pembuatan unit test, biasanya dibuat menggunakan nama folder test
- selanjutnya nama file dart biasanya akan memiliki akhiran _test, misal contoh_test.dart
- sama seperti ketika membuat aplikasi, saat membuat file unit test, kita juga perlu menambahkan main function di file test tersebut

Test Function
- untuk membuat unit test, kita bisa menggunakan function test yang terdapat di package test
- test function tersebut memiliki nama function dan juga anonymous dan juga anonymous function yang berisi kode unit test nya

Menjalankan Test
- untuk menjalankan file test, kita bisa menggunakan perintah: 
``dart test test/namaFile_test.dart``
- atau jika kita ingin menjalankan semua file unit test, kita bisa gunakan perintah:
``dart test``
secara otomatis dart akan menjalankan semua unit test di folder test

Expect Function
- saat kita membuat unit test, salah satu yang paing penting adalah memastikan apakah data yang kita test benar atau salah
- hal ini disebut assertion
- di dart, untuk melakukan assertion, kita bisa menggunakan function expect, dimana terdapat dua parameter, pertama adalah data yang akan di test, dan kedua adalah harapan datanya
- jika ternyata data tidak sesuai yang diharapkan, maka secara otomatis akan terjadi error yang menyebabkan unit test dianggap gagal

Matcher 

Macther Package
- saat kita membuat assertion pada unit test, pengecekkannya tidak hanya menggunakan kondisi equals, kadang ada kondisi lain
- kita bisa menggunakan matcher package, dimana terdapat banyak sekali function dan constant yang bisa kita gunakan untuk mempermudah kita melakukan assertion
- https://pub.dev/packages/matcher
- saat menginstall test package, matcher package otomatis terinstall, sehingga kita tidak perlu menginstallnya secara manual

Menggunakan Matcher
- https://pub.dev/documentation/matcher/latest/matcher/Matcher-class.html
- cara penggunaan matcher, kita bisa menggunakannya pada parameter kedua pada expect function:
``expect(value, mathcer)``

Group Function
- group() function merupakan sebuah function yang bisa digunakan untuk melakukan grouping test function
- melakukan grouping lebih bagus dilakukan ketika sebuah file unit test berisikan banyak sekali test function

setUp Function
- setUp function merupakan sebuah function yang bisa kita gunakan untuk meregistrasi kode yang selalu dieksekusi setiap kali test function dieksekusi
- setUp function cocok sekali ketika kita butuh membuat sebuah kode berulang di awal test function
- jika setUp function di tempatkan dalam group function, maka setUp function ini hanya berlaku untuk test function di dalam group function tersebut

tearDown Function
- jika setUp function adalah function yang selalu dieksekusi di awal unit test, maka tearDown adalah function yang selalu dieksekusi di akhir unit test
- cocok untuk melakukan hal yang harus dilakukan setelah semua unit test berjalan
- jika teardown function di tempatkan dalam group function, maka teardown function ini hanya berlaku untuk test function di dalam group tersebut



