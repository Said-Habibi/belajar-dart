A simple command-line application.

Pengenalan Collection
- sebelumnya di materi dart dasar, kita sudah berkenalan dengan tipe data seperti list, set dan map
- semua tipe data tersebut disebut Collection atau bisa dibilang adalah kumpulan data
- di dart sendiri, terdapat package yang khusus menyediakan class-class untuk tipe data Collection
- pada kelas ini, kita akan bahas sampai tuntas tentang tipe data Collection tersebut
- https://api.dart.dev/stable/2.17.6/dart-collection/dart-collection-library.html

Iterable
- sebelum kita bahas tentang dart collection, ada satu class yang teman-teman wajib tau, yaitu Iterable
- Iterable adalah parent class dari class-class Collection di dart
- sederhananya, Iterable adalah kumpulan data yang bisa diakses secara squential atau satu persatu
- https://api.dart.dev/stable/2.17.6/dart-core/Iterable-class.html 
- list dan set adalah kelas turunan dari Iterable

Iterator
- salah satu fitur di dart yang bisa digunakan untuk melakukan iterasi data, atau mengakses data di Iterable satu persatu adalah menggunakan for in
- jika tipe data memiliki property dengan nama iterator dan tipe iterator, secara otomatis kita bisa menggunakan perulangan for in
- contohnya di iterable terdapat property iterator, oleh karena itu kita bisa mengakses data di Iterable menggunakan for in
- https://api.dart.dev/stable/2.17.6/dart-core/Iterator-class.html

Iterasi Manual
- sebenarnya, ketika kita menggunakan perulangan for in, secara tidak langsung kita meakukan perulangan terhadap iterator menggunakan method-method yang tersedia di Iterator
- Iterator.moveNext() digunakan untuk berpindah ke data selanjutnya
- iterator.current digunakan untuk mendapatkan data saat ini

List
- List adalah tipe data yang berisikan kumpulan data yang memiliki index angka
- tipe data list sudah kita bahas di materi dart dasar
- saat membuat list, kita bisa buat dengan ukuran fix (tidak bisa berubah), atau bisa bertambah secara otomatis seiring penambahan data ke list
- https://api.dart.dev/stable/2.17.6/dart-core/List-class.html

Linked List
- list di dart mirip seperti array di bahasa pemogramman lain, untuk mengubah atau mengaksses datanya kita menggunakan index
- di dart juga tersedia collection bernama lingked list, ini adalah implementasi dari struktur data Double Lingked List
- https://api.dart.dev/stable/2.17.6/dart-collection/LinkedList-class.html

Fokus Linked List
- fokus lingked list adallah pada performa penambahan data dan penghapusan data yang cepat, oleh karena ini di lingked list tidak terdapat operasi pengubahan data menggunakan index seperti di list
- lingked list juga turunan dari iterable, bukan list

Linked List Entry
- Node di Lingked List direpresentasikan dalam class LingkedListEntry
- oleh karena itu, jika kita ingin membuat node, kita perlu membuat class turunan LingkedListEntry
- pada class tersebut sudah disediakan implementasi property next dan prev nya
- https://api.dart.dev/stable/2.17.6/dart-collection/LinkedListEntry-class.html

Unmodifiable List
- collection list, walaupun kita buat dalam bentuk fix atau growable, data di dalam list, tete bisa kita modifikasi
- dart menyediakan collection bernama Unmodifiable List, yaitu list yang setelah dibuat, data di dalamnya tidak bisa diubah lagi
- cara menggunakan unmodifiable list adalah dengan cara membungkus list yang sudah kita buat sebelumnya

Linked Hast Set

Set
- set sudah pernah dibahas di materi dart dasar
- set adalah collection yang berisikan kumpulan data unique, ketika kita menambahkan data yang sudah ada, maka otomatis data tersebut akan diabaikan

Linked Hash Set
- saat kita membuat set, implementasi default dari set sendiri adalah class LinkedHashSet
- seperti terlihat dari namanya, LinkedHashSet menggunakan struktur data double linked list sebagai implementasinya
- hal ini menjadikan, urutan data di set sesuai dengan urutan ketika kita memasukan data ke set

Hash Set
- hash set adalah implementasi set yang tidak menggunakan struktur data double linked list
- hal ini meyebabkan urutan di hash set tidak tentu, karena tergantung dari hash code data yang kita masukan
- hash set membuat proses insert data menjadi cepat karena tidak perlu melakukan engecekkan satu persatu d double linked list, cukup langsung menggunakan hash code

Splay Tree Set
- splay tree set merupakan implementasi dari set yang menggunakan struktur data tree
- hal ini menyebabkan data di splay tree set akan secara otomatis berurut sesuai comparator nya, defaultnya adalah ascending

Comparable 
- comparable adalah sebuah kontrak yang digunakan untuk membuat tipe data yang bisa diurutkan
- hampir semua tipe data di dart implement kontrak comparable, seperti number, String, boolean, dan lain-lain, oleh karena itu, data-data tersebut bisa diurutkan secara otomatis ketika menggunakan splaytreeset misalnya
- bagaimana jika kita ingin membuat class sendiri? secara default, class kita tidak bisa diurutkan datanya oleh splaytreeset, kita wajib implement kontrak comparable

Comparator
- secara default, ketika mengurutkan data, splayTreeSet akan menggunakan COmparable yang terdapat pada data nya
- bagaimana jika kita ingin memodifikasi cara melakukan pengurutan data nya? tapi tidak mau mengubah class data tersebut? atau bahakan tidak bisa mengubahnya, seperti tipe data number, boolean, String dan lain-lain
- pada kasus ini, kita bisa membuat comparable, yaitu function yang bisa kita gunakan untuk menentukan cara melakukan pengurutan data

Unmodifiable Set
- sama seperti list, di set pun terdapat class unmodifiable set, yang digunakan untuk membungkus set agar tidak bisa dimodifikasi lagi

List Queue
- queue adalah collection implementasi dari struktur data stack (tumpukan) atau Queue (antrian)
- Queue mirip seperti list, namun yang membedakan, pada queue, modifikasi data bisa dilakukan di depan (head) atau di belakang (tail)

List Queue
- list queue merupakan implementasi default dari queue di dart
- saat kita membuat object queue, sebenarnya kita membuat list queue

Double Linked Queue
- double linked queue merupakan implementasi dari queue dengan struktur data double linked list
- sebenarnya penggunaan doble linked queue sangat cocok untuk queue, karena struktur data double linked list sangat cepat untuk modifikasi data di awal dan akhir, sehingga cocok untuk queue ataupun stack

Iterable Method
- sampai saat ini, kita hanya membahas tentang class-class yang terdapat di dart collection, namun belum membahas tentang fitur method apa saja yang dimiliki oleh dart collection
- sebenarnya di dalam class Iterable, sudah banya method yang tersedia untuk bisa kita gunakan ketika butuh melakukan operasi terhadap data collection
- di materi-materi selanjutnya, kita akan coba bahas lebih detail tentang Iterable Method tersebut

Check Method
- salah satu yang biasa kita lakukan saat menggunakan collection (list, set, queue dan lain-lain), adalah melakukan pengecekan data
- iterable memiliki beberapa method untuk melakukan pengecekan data

Filter Method
- iterable juga memiliki banyak sekali method untuk melakukan filtering data yang terdapat di iterable

Transform Method
- iterable juga memiliki method untuk melakukan transformasi (mengubah) data menjadi data baru

Convert Method
- iterable juga memiliki method yang bisa digunakan untuk melakukan konversi tipe data Collection menjadi tipe data lain

Iterable Properties
- selain banyak sekali method yang dimiliki oleh iterable
- iterable juga memiliki banyak sekali property yang bisa kita gunakan untuk mendapatkan informasi dan data dari iterable

List Method
- list dan set karena turunan dari iterable, secara otomatis dapat menggunakan semua method di iterable
- namun karena sifat dari list dan set itu berbeda, list sendiri memiliki method lain yang khusus untuk list

List Operator
- selain method, list juga memiliki banyak operator

Set Method
- selain list, set juga memiliki method yang spesial terdapat di set

Map
- map sebenarnya mirip dengan tipe data list, dimana memiliki index dan value
- hanya saja, berbeda dengan list, pada map, kita bisa menentukan data index dengan tipe data dan data index sesuai yang kita mau
- di map, index disebut key
- detail tentang map sudah kita bahas di materi dart dasar

Map Entry
- map sendiri bukanlah turunan dari iterable, oleh karena itu secara default tidak bisa di iterasi menggunakan perulangan for
- namun, map memiliki property bernama entries, yang mengembalikan Iterable berisi MapEntry
- MapEntry adalah gabungan antara satu buah key + value

Hash Map
- hash map merupakan implementasi dari map yang tidak menggunakan struktur data double linked list
- sama seperti hash set, urutan key pada hash map tidak bisa di jamin berurut

Linked Hash Map
- linked hash ma merupakan implementasi dari map yang menggunakan struktur data double linked list
- hal ini menjadikan linked hash map datanya terurut sesuai dengan urutan memasukkan data ke linked hash map
- linked hash map merupakan default implementasi untuk map

Splay Tree Map
- splay tree map merupakan implementasi dari map yang menggunakan struktur data tree
- data di splay tree map secara otomatis akan berurut sesuai dengan datanya, atau bisa menggunakan comparator, mirip dengan splay tree set

Unmodifiable Map
- unmodifiable map merupakan implementasi map yang tidak bisa diubah lagi
- cara penggunaannya adalah membungkus map yang sudah ada, dengan UnmodifiableMap, sehingga tidak bisa dimodifikasi lagi











