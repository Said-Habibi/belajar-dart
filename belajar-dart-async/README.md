# 🔄 Belajar Dart Async

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
![Async](https://img.shields.io/badge/async-programming-orange?style=for-the-badge)

A sample command-line application designed for learning Asynchronous Programming in Dart.

---

## 📋 Daftar Isi

- [Sejarah Concurrency](#-sejarah-concurrency)
- [Pengenalan Dart Async](#-pengenalan-dart-async)
- [Future](#-future)
- [Stream](#-stream)
- [Timer](#-timer)
- [Async Await](#-async-await)
- [Isolate](#-isolate)
- [Completer & Stream Controller](#-completer--stream-controller)
- [Generator](#-generator)
- [Async Package](#-async-package)
- [Testing Async Code](#-testing-async-code)

---

## 🕐 Sejarah Concurrency

- Dahulu, komputer hanya menjalankan sebuah program pada satu waktu
- Karena hanya bisa menjalankan satu program pada satu waktu, hal ini tidak efisien dan memakan waktu lama karena hanya bisa mengerjakan satu tugas pada satu waktu
- Semakin kesini, sistem operasi untuk komputer semakin berkembang, sekarang sistem operasi bisa menjalankan program secara bersamaan dalam proses yang berbeda-beda, terisolasi dan saling independen antar program

### 🧵 Sejarah Thread

- Program biasanya berjalan dalam sebuah proses, dan proses akan memiliki resource yang independen dengan proses lain
- Sekarang, sistem operasi tidak hanya bisa menjalankan multiple proses, namun dalam proses kita bisa menjalankan banyak pekerjaan sekaligus, atau bisa dibilang proses ringan atau lebih dikenal dengan nama **thread**
- Thread membuat proses aplikasi bisa berjalan tidak harus sequential, kita bisa membuat proses aplikasi berjalan menjadi asynchronous atau parallel

### 💻 Era Multicore

- Sekarang kita sudah ada di zaman multicore, dimana smartphone pun sudah menggunakan multicore
- Multicore sangat menguntungkan kita karena bisa membuat aplikasi yang bisa menjalankan proses dan thread secara bersamaan

### ⚡ Concurrency vs Parallel

| Konsep          | Deskripsi                                                   |
| --------------- | ----------------------------------------------------------- |
| **Concurrency** | Mengerjakan beberapa pekerjaan satu persatu pada satu waktu |
| **Parallel**    | Mengerjakan beberapa pekerjaan sekaligus pada satu waktu    |

#### 🌐 Contoh Concurrency dan Parallel

- Browser adalah aplikasi yang concurrent dan parallel
- Browser akan melakukan proses **concurrent** ketika membuka web, browser akan melakukan http request, lalu mendownload semua file web (html, css, js) lalu merender dalam bentuk tampilan web
- Browser akan melakukan proses **parallel**, ketika kita membuat beberapa tab web, dan juga sambil download beberapa file, dan menonton video dari web streaming

### 🔄 Synchronous vs Asynchronous

| Konsep           | Deskripsi                                                                                                              |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------- |
| **Synchronous**  | Kode program berjalan secara sequential, semua tahapan ditunggu sampai selesai baru dieksekusi ke tahapan selanjutnya  |
| **Asynchronous** | Kode program berjalan dan kita tidak perlu menunggu eksekusi kode tersebut selesai, bisa lanjut ke tahapan selanjutnya |

---

## 🎯 Pengenalan Dart Async

### Dart Async

- Dart async merupakan fitur di Dart untuk mendukung fitur concurrency dan async
- Berbeda dengan bahasa pemrograman seperti Java, dimana di Java kita perlu membuat thread sendiri, di Dart urusan thread sudah dilakukan secara internal oleh Dart, sehingga kita bisa fokus membuat task yang akan dijalankan secara concurrent dan async

### ❓ Kenapa Async?

- Operasi async menjadikan program kita bisa mengerjakan kode lain tanpa harus menunggu pekerjaan selesai
- Contoh: saat kita melakukan operasi yang menggunakan jaringan seperti mengambil data dari web, database atau bahkan membaca file, kita tidak perlu menunggu sampai prosesnya selesai untuk mengerjakan tugas selanjutnya
- Hal ini tidak bisa dilakukan jika kita masih menggunakan operasi Sync

### 🔁 Dart Event Loop

- Cara kerja Dart mirip seperti NodeJS, dimana dia bekerja dengan event loop
- Event loop berisikan satu buah thread yang akan terus bekerja, dan semua pekerjaan akan dikirim ke queue (antrian) yang akan dieksekusi satu per satu oleh thread event loop

### 🏝️ Dart Isolates

- Isolates adalah tempat semua kode Dart berjalan
- Dalam bahasa pemrograman lain, biasanya aplikasi akan berjalan di satu proses sharing memory dengan beberapa thread
- Berbeda di Dart, kode program berjalan dalam isolates, yaitu isolates memiliki **memory, queue, thread dan event loop sendiri** yang terpisah
- Kita bisa membuat beberapa isolates di Dart, namun tiap isolates akan terpisah secara memory, queue, thread dan event loop, walaupun di aplikasi Dart yang sama

### 📡 Komunikasi Antar Isolates

- Walaupun secara memory, queue, thread dan event loop berbeda, namun antar isolates bisa saling berkomunikasi
- Salah satu keuntungan menggunakan isolates, kita tidak perlu takut dengan race condition dan locking ketika menjalankan beberapa thread, karena tiap thread akan berjalan di isolates berbeda-beda

---

## 🔮 Future

- Tipe data Future di Dart mirip dengan di bahasa pemrograman lain, di Java ada Future, atau di JavaScript ada Promise
- Future adalah hasil dari asynchronous computation
- Anggap saja ini seperti return value, yang value ada ketika nanti async computation nya selesai
- 🔗 [Future Class Documentation](https://api.dart.dev/stable/2.18.4/dart-async/Future-class.html)

### 📊 Future State

| State           | Deskripsi                                                                            |
| --------------- | ------------------------------------------------------------------------------------ |
| **Uncompleted** | Future belum memiliki value, kemungkinan karena proses computation nya belum selesai |
| **Completed**   | Future sudah memiliki value hasil computation, namun value bisa sukses atau gagal    |

### 📦 Future Value

- Future adalah tipe data Generic, dimana dia bisa menyimpan data aslinya
- Misal jika menyimpan data string, artinya `Future<String>`
- Misal jika menyimpan data int, artinya `Future<int>`
- Jika future tidak mengembalikan nilai apapun, kita bisa menggunakan `Future<void>`

### 🏗️ Future Constructor

| Constructor                             | Deskripsi                                                          |
| --------------------------------------- | ------------------------------------------------------------------ |
| `Future(computation)`                   | Membuat future dengan memberikan computation function              |
| `Future.delayed(duration, computation)` | Membuat future dengan memberikan duration dan computation function |
| `Future.value(value)`                   | Membuat future dengan memberikan value                             |
| `Future.error(error)`                   | Membuat future dengan memberikan error                             |

### ⚙️ Future Method

Future memiliki banyak sekali method yang bisa digunakan untuk meregistrasikan callback/function yang akan dipanggil ketika perubahan state di future:

| Method                   | Deskripsi                                                        |
| ------------------------ | ---------------------------------------------------------------- |
| `whenComplete(callback)` | Dipanggil ketika future selesai, baik sukses atau error          |
| `then(callback)`         | Dipanggil ketika future sukses, dan diubah menjadi nilai lainnya |
| `onError(callback)`      | Dipanggil ketika future error untuk diubah menjadi nilai lainnya |
| `catchError(callback)`   | Dipanggil ketika Future error                                    |

### 🔀 Transform Future

- Method `then()` milik future bisa digunakan untuk mengubah bentuk isi future menjadi future tipe lain
- Kita cukup return kan value yang baru di callback `then()` nya

### 🛡️ Try Catch Finally

- Menggunakan future, kita tidak bisa menggunakan try catch finally
- Namun, dengan menggabungkan beberapa method future, kita bisa implementasikan try catch finally dengan method `then()`, `catchError()` dan `whenComplete()`

---

## 🌊 Stream

- Future adalah object async yang digunakan untuk membuat sebuah object, bagaimana jika object-nya lebih dari satu? Anggap saja seperti future collection
- Dart menyediakan tipe data Stream, yaitu future yang value nya lebih dari satu
- **Bedanya dengan `Future<List<T>>`?** Pada `Future<List<T>>` data list `<T>` harus lengkap baru future bisa complete, pada `Stream<T>` kita bisa mengirim data T ke `Stream<T>` secara bertahap tidak perlu harus lengkap terlebih dahulu
- 🔗 [Stream Class Documentation](https://api.dart.dev/stable/2.18.4/dart-async/Stream-class.html)

### 🏗️ Stream Constructor

| Constructor                        | Deskripsi                                                           |
| ---------------------------------- | ------------------------------------------------------------------- |
| `empty()`                          | Membuat stream kosong                                               |
| `value<T>`                         | Membuat `Stream<T>` dengan satu value                               |
| `fromFuture(Future<T>)`            | Membuat `Stream<T>` dengan satu value dari `Future<T>`              |
| `fromFutures(Iterable<Future<T>>)` | Membuat `Stream<T>` dengan beberapa value dari iterable `Future<T>` |
| `fromIterable(Iterable<T>)`        | Membuat `Stream<T>` dengan beberapa value dari `Iterable<T>`        |
| `periodic(duration, computation)`  | Membuat `Stream<T>` secara periodik                                 |

### 📡 Stream Subscription

- Berbeda dengan future, pada stream, karena bentuk datanya seperti aliran data, kita perlu melakukan subscribe jika ingin tahu data yang terdapat di stream
- Stream hanya bisa di subscribe sebanyak satu kali, jika kita melakukan subscribe lagi terhadap stream yang sama, maka otomatis akan error
- Untuk melakukan subscribe terhadap stream, kita bisa menggunakan method `listen(callback)`, otomatis mengembalikan object `StreamSubscription<T>`
- 🔗 [StreamSubscription Class](https://api.dart.dev/stable/2.18.4/dart-async/StreamSubscription-class.html)

### ⚙️ Stream Subscription Method

| Method              | Deskripsi                      |
| ------------------- | ------------------------------ |
| `onData(callback)`  | Ketika Stream menerima data    |
| `onError(callback)` | Ketika Stream menerima error   |
| `onDone(callback)`  | Ketika Stream selesai          |
| `cancel()`          | Untuk membatalkan subscription |
| `pause()`           | Untuk menunda subscription     |
| `resume()`          | Untuk melanjutkan subscription |

### 🎧 Stream Listen

- Saat kita membuat stream subscription menggunakan method `Stream.listen(callback)`, parameter callback tersebut secara otomatis menjadi `onData` callback di stream subscription
- Jika kita mengubah `onData(callback)` lagi maka secara otomatis callback di `listen()` akan diganti

### 🔄 Transform Stream

Stream memiliki banyak method yang bisa kita gunakan untuk memanipulasi data stream sebelum dikirim ke stream subscription:

#### 🔍 Filter Method

| Method             | Deskripsi                                                                 |
| ------------------ | ------------------------------------------------------------------------- |
| `take(int)`        | Mengambil data stream sejumlah tertentu                                   |
| `takeWhile(test)`  | Mengambil data Stream selama kondisi test masih ok                        |
| `where(test)`      | Hanya mengambil data Stream jika sesuai kondisi test                      |
| `lastWhere(test)`  | Hanya mengambil satu data Stream terakhir sesuai kondisi test             |
| `firstWhere(test)` | Hanya mengambil satu data Stream pertama sesuai kondisi test              |
| `drain()`          | Meng-ignore semua data Stream, namun mengirim signal ketika telah selesai |
| `distinct()`       | Meng-ignore data yang sama dengan data sebelumnya                         |
| `skip(int)`        | Meng-ignore jumlah data diawal                                            |
| `skipWhile(test)`  | Meng-ignore jumlah di awal ketika kondisi test masih oke                  |

#### 🔀 Transform Method

| Method                              | Deskripsi                                                       |
| ----------------------------------- | --------------------------------------------------------------- |
| `cast<R>`                           | Mengkonversi value Stream                                       |
| `map(R convert(T))`                 | Mengkonversi value Stream dengan function convert               |
| `expand(Iterable<R> convert(T))`    | Mengkonversi value Stream menjadi `Iterable<R>`                 |
| `asyncMap(Future<R> convert(T))`    | Sama seperti `map()` namun hasil convert adalah `Future<R>`     |
| `asyncExpand(Stream<R> convert(T))` | Sama seperti `expand()`, namun hasil convert adalah `Stream<R>` |

### ➕ Fold and Reduce

Kadang ada kebutuhan kita ingin membuat perhitungan data dari tiap Stream, contoh kita ingin melakukan total untuk semua data di `Stream<int>`:

| Method                   | Deskripsi                                                                           |
| ------------------------ | ----------------------------------------------------------------------------------- |
| `fold(initial, combine)` | Melakukan combine data dari tiap data di stream, dengan initial data yang diberikan |
| `reduce(combine)`        | Melakukan combine data dari tiap data di stream, namun tidak dengan initial data    |

### 📢 Broadcast Stream

- Stream hanya bisa di subscribe oleh satu Stream Subscription
- Namun ada jenis Stream yang bisa di subscribe oleh lebih dari satu Stream Subscription, yaitu **Broadcast Stream**
- Untuk membuat Broadcast Stream, kita bisa gunakan method `asBroadcastStream()` pada Stream yang sudah kita buat

---

## ⏰ Timer

- Timer adalah class di Dart yang bisa kita gunakan untuk membuat pekerjaan yang terjadwal secara periodik
- 🔗 [Timer Class Documentation](https://api.dart.dev/stable/2.18.4/dart-async/Timer-class.html)

### ⏳ Delayed Timer

- Jenis timer pertama timer delayed task, dimana kita bisa meminta timer untuk menjalankan sebuah task setelah batas waktu tertentu
- Constructor: `Timer(duration, callback)` untuk membuat delayed job di callback yang akan dijalankan setelah waktu duration tercapai

### 🔄 Periodic Timer

- Jenis timer kedua adalah periodic timer, dimana kita bisa meminta timer untuk menjalankan sebuah task secara periodik
- Constructor: `Timer.periodic(duration, callback)` untuk membuat periodic job di callback yang akan dijalankan setelah waktu duration tercapai

---

## ⚡ Async Await

- Dart mirip seperti di JavaScript, dimana kita bisa membuat sebuah kode asynchronous menggunakan kata kunci `async`
- Di Dart, kita bisa membuat function `Future<T>` dengan menggunakan async, sehingga kode yang kita buat terlihat seperti synchronous

### ⚠️ Masalah di Future

- Saat kita menggunakan banyak sekali kode asynchronous menggunakan future, kadang ketika melakukan manipulasi datanya akan membuat kita sulit untuk dibaca

### ⏸️ Await

- Saat kita membuat function dengan kata kunci `async`, didalamnya kita bisa menggunakan kata kunci `await`
- Kata kunci await terlihat seperti `then()` method dari future, tapi sebenarnya cara kerjanya terlihat lebih mudah dibaca karena seperti gaya kode synchronous
- Cara menggunakan kata kunci await cukup tambahkan di future yang ingin kita ambil datanya

### 🛡️ Try Catch Async Await

- Salah satu keunggulan menggunakan async await, selain kode kita terlihat seperti kode synchronous
- Kita juga bisa menggunakan try catch finally layaknya di kode synchronous

### 🌊 Async Await Stream

- Selain digunakan untuk future, async await juga bisa digunakan dalam stream
- Dengan begitu kita bisa menggunakan Stream seperti perulangan biasa
- Namun perlu diperhatikan, saat menggunakan async await stream, pastikan Stream akan selesai

---

## 🏝️ Isolate

- Seperti yang diawal dijelaskan, bahwa semua kode Dart dijalankan di dalam isolate dengan single thread
- Karena hanya menggunakan satu thread, ketika ada kode yang melakukan blocking, maka secara otomatis kode tersebut akan melakukan blocking seluruh event loop
- Hal ini sangat berbahaya, karena bisa membuat semua proses stuck, tidak berjalan
- 🔗 [Isolate Class Documentation](https://api.dart.dev/stable/2.18.4/dart-isolate/Isolate-class.html)

### 🏗️ Membuat Isolate

- Pada kasus diatas, kita bisa coba jalankan function block di isolate berbeda, sehingga tidak mengganggu isolate utama yang sedang digunakan untuk menjalankan aplikasi
- Untuk membuat isolate kita bisa gunakan static method: `Isolate.spawn(function(T), T)` dimana function akan dieksekusi di isolate berbeda dengan mengirim parameter T

### 📡 Receive dan Send Port

#### Komunikasi Antar Isolate

- Karena isolate berjalan dengan isolate lainnya, bagaimana pada kasus kita ingin mendapatkan nilai dari hasil perhitungan isolate lain
- Misal kita ingin mengeksekusi function di isolate lain, namun hasil dari function nya ingin kita simpan dapatkan di isolate utama misalnya

#### Receive dan Send Port

- Pada kasus ini, kita bisa menggunakan Receive dan Send Port
- Ini mirip dengan channel jika di Golang, dimana kita bisa mengirim dan menerima data dari isolate lain
- Kita cukup buat `ReceivePort`, lalu kirim `SendPort` yang terdapat di `ReceivePort` nya ke isolate lain
- Di isolate lain, kita bisa mengirim data menggunakan sendPort tersebut
- `ReceivePort` mirip seperti Stream, jadi kita bisa listen data dari `ReceivePort`
- 🔗 [ReceivePort Class](https://api.dart.dev/stable/2.18.4/dart-isolate/ReceivePort-class.html)
- 🔗 [SendPort Class](https://api.dart.dev/stable/2.18.4/dart-isolate/SendPort-class.html)

---

## 🔧 Completer & Stream Controller

### 🎯 Completer

- Dart memiliki class bernama Completer, yang bisa kita gunakan mempermudah membuat future
- Saat misal kita integrasi dengan library orang lain yang menggunakan callback, kita ingin melakukan wrapping menjadi future, kita bisa menggunakan completer
- 🔗 [Completer Class](https://api.dart.dev/stable/2.18.4/dart-async/Completer-class.html)

### 🌊 Stream Controller

- Selain completer yang bisa digunakan untuk membuat future, Dart juga menyediakan class Stream Controller untuk membuat Stream
- Kasusnya juga cocok ketika kita membuat stream misal ketika kita menggunakan library orang lain yang menggunakan callback
- 🔗 [StreamController Class](https://api.dart.dev/stable/2.18.4/dart-async/StreamController-class.html)

---

## ⚡ Generator

- Dart memiliki fitur bernama generator, yang bisa digunakan untuk membuat data collection sync ataupun async
- Data sync akan mengembalikan `Iterable<T>` sedangkan data async akan mengembalikan `Stream<T>`

| Keyword  | Return Type   |
| -------- | ------------- |
| `sync*`  | `Iterable<T>` |
| `async*` | `Stream<T>`   |

- Untuk mengembalikan value nya, kita bisa gunakan `yield value`

### ⚡ yield\*

- Selain `yield`, untuk mengirim value di generator, terdapat `yield*`, yang bisa digunakan untuk mengirim seluruh data `Iterable<T>` atau `Stream<T>`

---

## 📦 Async Package

- Semua class Dart async terdapat di package `dart:async`
- Namun diluar itu, tim Dart membuat package khusus yang berisi class-class bantuan untuk fitur dart async, yaitu package async
- 🔗 [Async Package](https://pub.dev/packages/async)

### 📦 Async Cache

- AsyncCache merupakan class di async package yang digunakan untuk menjalankan async function, namun hasilnya disimpan di memory selama durasi waktu tertentu
- Jika durasi waktu sudah lewat, maka async function akan di eksekusi lagi
- 🔗 [AsyncCache Class](https://pub.dev/documentation/async/latest/async/AsyncCache-class.html)

### 🧠 Async Memoizer

- AsyncMemoizer adalah class yang mirip dengan AsyncCache, yang membedakan adalah async memoize akan menyimpan data secara permanen, tanpa ada durasi waktu
- 🔗 [AsyncMemoizer Class](https://pub.dev/documentation/async/latest/async/AsyncMemoizer-class.html)

---

## 🧪 Testing Async Code

### 🔮 Future Test

- Package test di Dart dapat digunakan untuk melakukan pengetesan kode async dalam bentuk future
- Hal ini mempermudah ketika kita akan membuat unit test kode Asynchronous
- Di dalam `test()`, kita bisa masukkan function async, sehingga bisa menggunakan await

### 🎯 Future Matcher

- Jika kita menggunakan async await kita bisa mengetest kode future seperti kode synchronous
- Namun jika kita tidak menggunakan async await, kita bisa menggunakan function `completion()` untuk membantu melakukan matcher data Future

### 🌊 Stream Test

- Package test juga menyediakan banyak function matcher untuk membantu kita ketika melakukan pengetesan terhadap jenis data stream

### 🎯 Stream Matcher

- Matcher khusus untuk testing Stream
