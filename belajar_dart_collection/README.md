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











