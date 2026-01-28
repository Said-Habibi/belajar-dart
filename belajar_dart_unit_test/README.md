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

Platform Selector
- pada beberapa kasus, mungkin kita membuat kode dart yang dikhususkan untuk platform tertentu, misal untuk sistem operasi tertentu misalnya
- kita bisa menandai sebuah unit test dengan annotation @TestOn, untuk memberi tahu bahwa unit test ini untuk platform yang berbeda, secara otomatis unit test tersebut akan di skip
- platform selector mendukung operator boolean, seperti &&, || dan !

Daftar Platform
- vm: test di command line dart vm
- chrome: test di browser chrome
- firefox: test di browser firefox
- safari: test di browser safari
- ie: test di browser internet explorer
- node: test di NodeJs
- browser: test di browser apapun
- js: test telah di compile ke JavaScript
- blink: test di browser yang memiliki blink render engine
- windows: test di os windows
- mac-os: test di os mac
- linux: test di os linux
- android: test di os android
- ios: test di os IOS
- posix: test di os POSIX

Platform Selector Parameter
- saat menggunakan annotation @TestOn, maka seluruh unit test di file tersebut akan menggunakan platform selector yang sudah di tentukan
- kadanag, kita hanya ingin beberapa test function atau group function saja misalnya, pada kasus ini kita bisa menambahkan parameter testOn

Skip Test
- saat kita membuat unit test, kadang ada kalanya sebuah unit test bermasalah dan belum bisa diperbaiki
- pada kasus ini, jangan hapus unit tersebut, tapi tandai unit test tersebut agar tidak dijalankan, ataup skip
- kita bisa menggunakan annotation @Skip untuk menandai sebuah file unit test agar di skip

Skip Parameter
- menggunakan annotation @Skip secara otomatis akan melakukan skip seluruh test di file tersebut
- kadang, ada kalanya kita ingin melakukan skip satu buah test function atau group function
- kadang kita bisa menambahkan object parameter skip pada test function dan group function

Tag
- saat membuat unit test yang banyak, kadang kita ingin menambahkan tag terhadap unit test nya
- biasanya ini digunakan sebagai penanda untuk tag
- kita bisa menggunakan annotation @Tags, atau menggunakan named parameter tags di test atau group function
- salah satu keuntungan menambahkan tag, kita bisa meminta dart untuk menjalankan unit test dengan tag tertentu saja misalnya, dengan perintah:
``dart test --tags "tag dengan boolean selector"``

Retry Test
- saat membuat unit test, kadang ada kalanya unit test tersebut tidak stabil, misal butuh konek ke database atau sistem lain
- hal ini menyebabkan kadang unit test sering gagal, bukan karena kode salah, tapi karena faktor seperti koneksi network, dan lain-lain
- dart memiliki fitu untuk melakukan retry ketika unit test gagal dilakukan
- kita bisa menggunakan annotation @Retry dan secara otomatis unit test akan di retry sejumlah yang kita tentukan

Retry Parameter
- jika kita hanya ingin melakukan retry pada test atau group function tertentu, kita juga bisa menambahkan named parameter retry

Platform Spesific Configuration
- saat menggunakan @Skip, secara otomatis tidak akan melihat platform apapun, dia akan di skip secara otomatis
- bagaimana jika kasusnya misalnya, kita ingin melakukan Skip, namun hanya untuk platform "mac-os" saja?
- pada kasus seperti ini, kita bisa menggunakan annotation @OnPlatform

Platform Specific Paramaeter
- sama dengan annotation lainnya, jika misal kita hanya ingin menambahkan konfigurasi platform pada test atau group tertentu, kita bisa tambahkan named parameter onPlatform

Package Configuration
- sebelumnya, kita hanya melakukan pengaturan di file unit tast dart saja
- apa yang terjadi jika misal kita butuh pengaturan yang sama, untuk semua file unit test? misal kita ingin semua hanya berjalan di windows, atau semua memiliki tag, dan lain-lain. maka, kita harus lakukan satu persatu di file dart nya
- untungnya, dart memiliki package configuration file untuk unit test, dimana kita bisa gunakan file yaml untuk menambah informasi unit test di seluruh package hanya dengan satu file, yaitu dart_test.yaml

Configuration Format
- banyak sekali yang bisa kita atur di package configuration file
- kita bisa melihat detailnya di dokumentasi resminya
- https://github.com/dart-lang/test/blob/master/pkgs/test/doc/configuration.md

Mock Object
- saat kita membuat unit test, kadang tidak semua object bisa kita test
- contoh, misal kita memiliki object yang harus mengirim API request ke Payment Gateway, atau sistem lain yang diluar kontol kita
- pada kasus seperti ini, kita tidak bisa memaksakan untuk membuat unit test yang mengirim request ke sistem lain, karena jika kita paksakan, bisa jadi nanti hasil unit testnya tidak konsisten
- pada kasus seperti ini, kita bisa menggunakan konsep moc object, yaitu membuat object tiruan yang bisa kita atur tingkah lakunya agar sesuai dengan yang kita inginkan

Contoh Kasus
- sebelum belajar mock object, sekarang kita akan coba buat contoh kasus, misal kita memiliki class dengan nama BookService dan BookRepository
- BookRepository merupakan class yang berisikan kode untuk memanipulasi data Book ke dalam sistem lain, misal database atau API lain
- BookService merupakan class yang berisikan kode untuk bussiness logic aplikasi kita
- BookService memiliki method yang bisa digunakan untuk membuat Book, mengubah Book, mengambil Book dan menghapus Book

Mockito
- dart sudah menyediakan package khusus untuk membuat mock objet yaitu mockito
- https://pub.dev/packages/mockito
- mockito merupakan package yang terinspirasi dari library mock object java dengan nama sama, yaitu mockito https://github.com/mockito/mockito

Menginstall mockito
- sebelum kita menggunakan mockito, silahkan tambahkan package mockito terlebih dahulu
- selain itu, mockito juga membutuhkan package build_runner, jadi pastikan kita menambakan package build_runner juga
- https://pub.dev/packages/build_runner

Membuat Mock Object
- cara kerja mockito adalah dengan membuat generated file berisi mock class yang bisa kita gunakan sebagai pengganti class aslinya
- pertama, kita perlu memberitahu mockito untuk membuat mock objec dengan menggunakan anntation GenerativeNiceMocks, dan lakkan import ke file dengan format:
``namafile_test.mocks.dart
- selanjutnya, kita perlu menjalankan build_runner, agar file mock otomatis dibuatkan oleh mockito

Verifikasi Mock Object
- saat kita membuat unit test menggunakan mock object, yang perlu di perhatikan adalah, kita harus bisa memastikan bahwa mock object benar-baner dipanggil, karena jika tidak, resikonya unit test kita menjadi tidak valid
- contoh misal kita hapus kode yang memanggil bookrepository di BookService, dan lihat apa yang terjadi

