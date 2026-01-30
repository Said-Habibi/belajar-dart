### Sejarah Concurency

- dahulu, komputer hanya menjalankan sebuah program pada satu waktu
- karena hanya bisa menjalankan satu program pada sat waktu, hal ini tidak efisien dan memakan waktu lama karena hanya bisa mengerjakan satu tugas pada satu waktu
- semakin kesini, sistem operasi untuk komputer semakin berkembang, sekarang sistem operasi bisa menjalankan program secara bersamaan dalam proses yang berbeda-beda, terisolasi dan saling independen antar program

### Sejarah Thread

- program biasanya berjalan dalam sebuah proses, dan proses akan memiliki resource yang independen dengan proses lain
- sekarang, sistem operasi tidak hanya bisa menjalankan multiple proses, namun dalam proses kita bisa menjalankan banyak pekerjaan sekaligus, atau bisa dibilang proses ringan atau lebih dikenal dengan nama thread
- thread membuat proses aplikasi bisa berjalan tidak harus sequential, kita bisa membuat proses aplikasi berjalan menjadi asynchronous atau parallel

### Era Multicore

- sekarang kita sudah ada di zaman multicore, dimana smartphone pun sudah menggunakan multicore
- multicore sangat menguntungkan kita karena bisa membuat aplikasi yang bisa menjalankan proses dan thread secara bersamaan

### Concurrency vs Parallel

- kadang banyak yang bingung dengan concurrency dan parallel, sebenarnya kita tidak perlu terlalu memusingkan hal ini
- karena saat ini, kita pasti akan menggunakan keduanya ketika membuat aplikasi
- concurrency artinya mengerjakan beberapa pekerjaan satu persatu pada satu waktu
- parallel artinya mengerjakan beberapa pekerjaan sekaligus pada satu waktu

### Contoh Concurrency dan Parallel

- browser adalah aplikasi yang concurrent dan parallel
- browser akan melakukan proses concurrent ketika membuka web, browser akan melakukan http request, lalu mendownload semua file web (html,css,js) lalu merender dalam bentuk tampilan web
- browser akan melakukan proses parallel, ketika kita membuat beberapa tab web, dan juga sambil download beberapa file, dan menonton video dari web streaming

### Synchronous vs Asynchronous

- saat membuat aplikasi yang concurrent atau parallel, kadang kita sering menemui istilah synchronous dan asynchronous
- tidak perlu bingung dengan istilah tersebut, secara sederhana
- synchronous adalah ketika kode program kita berjalan secara sequential, dan semua tahapan ditunggu sampai prosesnya selesai baru akan dieksekusi ke tahapan selanjutnya
- sedangkan, asynchronous artinya ketika kode program kita berjalan dan kita tidak perlu menunggu eksekusi kode block tersebut selesai, kita bisa lanjutkan ke tahapan kode program selanjutnya

### Pengenalan Dart Async

### Dart Async

- dart async merupakan fitur di dart untuk menfukung fitur concurrency dan async
- berbeda dengan bahasa pemogramman seperti java, dimana di java kita perlua membuat thread sendiri, di dart, urusan thread sudah dilakukan secara internal oleh dart, sehingga kita bisa fokus membuat task yang akan dijalankan secara concurrent dan async

### Kenapa Async?

-operasi async menjadikan program kita bisa mengerjakan kode lain tanpa harus menunggu pekerjaan selesai

- contoh, saat kita melakukan operasi yang menggunakan jaringan seperti mengambil data dati web, database atau bahkan membaca file. kita tidak perlu menunggu sampai prosesnya selesai, untuk mengerjakan tugas selanjutnya
- hal ini tidak bisa dilakukan jika kita masih menggunakan operasi Sync

### Dart Event Loop

- cara kerja dart mirip seperti nodejs, dimana dia bekerja dengan event loop
- vent loop berisikan satu buah thread yang akan terus bekerja, dan semua pekerjaan akan dikirim ke queue (antrian) yang akan dieksekusi satu per satu oleh thread event loop

### Dart Isolates

- isolates adalah tempat semua kode dart berjalan
- dalam bahasa pemogramman lain, biasanya aplikasi akan berjalan di satu proses sharing memory dengan beberapa thread
- berbeda di dart, di dart, kode program berjalan dalam isolates, yaitu isolates memiliki memory, queue, thread dan event loop sendiri yang terpisah
- kita bisa membuat beberapa isolates di dart, namun tiap isolates akan terpisah secara memory, queue, thread dan event loop, walupun di aplikasi dart yang sama

### Komunikasi Antar Isolates

- walaupun secara memory, queue, thread dan event loop berbeda, namun antar isolates bisa saling berkomunikasi
- selain itu salah satu keuntungan menggunakan isolates, kita tidak perlu takut dengan race condition dan looking ketika menjalankan beberapa thread, karena tiap thread akan berjalan di isolates berbeda-beda

Project Ini Clonningan Dari belajar_dart_unit_test

### Future

- tipe data future di dart mirip denfan di bahasa pemogramman lain, di java ada future, atau di javascript ada promise
- future adalah hasil dari synchronous computation
- anggap saja ini seperti return value, yang value ada ketikaa nanti async computation nya selesai
- https://api.dart.dev/stable/2.18.4/dart-async/Future-class.html

### Future State

- yang namanya computation, bisa sukses bisa gagal, begitu juga di dart
- future di dart memiliki dua states
- uncompleted, artinya fture belum memiliki value, kemungkinan karena proses computation nya belum selesai
- completed, artinya future sudah memiliki value hasil computation, namun perlu diingat, value bisa sukses atau gagal

### Future Value

- future adalah tipe data Generic, dimana dia bisa menyimpan data aslinya
- misal jika menyimpan data string, artinya Future<String>
- misal jika menyimpan data int, artinya Future<int>
- jika future tidak mengembalikan nilai apapun, kita bisa menggunakan Future<void>

### Future Constructor

Ada banyak cara membuat future

- future(computation) : membuat future dengan memberikan computation function
- future.delayed(duration, computation) : membuat future dengan memberikan duration dan computation function
- future.value(value) : membuat future dengan memberikan value
- future.error(error) : membuat future dengan memberikan error

### Future Method

- future memiliki banyak sekali method, yang bisa kita gunakan untuk meregistrasikan callback/function yang akan dipanggil ketika perubahan state di future
- https://api.dart.dev/stable/2.18.4/dart-async/Future-class.html#instance-methods
- whenComplete(FutureOr<void>callback(T)):Future<T>, dipanggil ketika future selesai, baik itu sukses atau error
- then(FutureOr<R>callback(T)):Future<R>, dipanggil ketika future sukses, dan diubah menjadi nilai lainnya
- onError(FuureOr<R>callback(Error, StackTrace):Future<R>, dipanggil ketika future error untuk diubah menjadi nilai lainnya
- catchError(callback(Error)), dipanggil ketika Future error

### Transfrom Future

- method then() milik future bisa digunakan untuk mengubah bentuk isi future menjadi future tipe lain
- kita cukup return kan value yang baru di callback then() nya

### Try Catch Finally

- menggunakan future, kita tidak bisa menggunakan try catch finally
- namun, dengan menggabnungkan beberapa method future, kita bisa implementasikan try catch finally dengan method then(), catchError() dan whenComplete()

### Stream

- future adalah object async yang digunakan untuk membuat sebuah object, bagaimana jika object-nya lebih dari satu? anggap saja seperti future collection
- dart menyediakan tipe data stream, yaitu future yang value nya lebih dari satu
- apa bedanya dengan Future<List<T>>? pada Future<List<T>> data list <T> harus lengkap baru future bisa complet, pada stream<T>, kita bisa mengirim data T ke Stream<T> secara bertahap tidak perlu harus lengkap terlebih dahulu
- https://api.dart.dev/stable/2.18.4/dart-async/Stream-class.html

### Stream Constructor

- empty() untuk membuat stream kosong
- value<T> untuk membuat Stream<T> dengan satu value
- fromFuture(Future<T>) untuk membuat Stream<T> dengan satu value dari future<T>
- fromFutures(Iterable<Future<T>>) untuk membuat Stream<T> dengan beberapa value dari iterable future<T>
- fromIterable(Iterable<T>) untuk membuat Stream<T> dengan beberapa value dari iterable <T>
- periodic(duration, computation) untuk membuat stream<T> secara priodik

### Stream Subscription

- berbeda dengan future, pada stream, karena bentuk datanya seperti aliran data, kita perlu melakukan subscribe jika ingin tahu data yang terdapat di stream
- stream hanya bisa di subscribe sebanyak satu kali, jika kita melakukan subscribe lagi terhadap stream yang sama, maka otomatis akan error
- untuk melakukan subscribe terhadap stream, kita bisa menggunakan method listen(callback), otomatis mengembalikan object StreamSubscription<T>
- https://api.dart.dev/stable/2.18.4/dart-async/StreamSubscription-class.html

### Stream Subscription Method

Stream Subscription memiliki banyak method seperti di future

- onData(callback) ketika Stream menerima data
- onError(callback) ketika Stream menerima error
- onDone(callback) ketika Stream selesai
- cancel() untuk membatalkan subscription
- pause() untuk menunda subscription
- resume() untuk melanjutkan subscription

### Stream Listen

- saat kita membuat stream subscription menggunakan method Stream.listen(callback).parameter callback tersebut secara otomatis menjadi onData callback di stream subscription
- jika kita mengubah onData(callback) lagi maka secara otomatis callback di listen() akan diganti

### Transform Stream

- Stream memiliki banyak method yang bisa kita gunakan untuk memanipulasi data stream sebelum dikirim ke stream subscription
- hal ini sangat cocok ketika misal kita ingin melakukan transform data sebelum data tersebut diterima oleh stream subscription
- ada banyak sekali jenis method di stream, seperti untuk filtering, transformation, dan lain-lain
- https://api.dart.dev/stable/2.18.4/dart-async/Stream-class.html#instance-methods

### Filter method

- take(int):Stream<T> untuk mengambil data stream sejumlah tertentu
- takeWhile(test): Stream<T> untuk mengambil data Stream selama kondisi test masih ok
- where(test) : Stream<T> untuk hanya mengambil data Stream jika sesuai kondisi test
- lastWhere(test): Future<T> hanya mengambil satu data Stream terakhir sesuai kondisi test
- firstWhere(test): Future<T> hanya mengambil satu data Stream pertama sesuai kondisi test
- drain() : Future<T> untuk meng-ignore semua data Stream, namun mengirim signal ketika telah selesai
- distinct() : Stream<T> untuk meng-ignore data yang sama dengan data sebelumnya
- skip(int) : Stream<T> untuk meng-ignore jumlah data diawal
- skipWhile(test) : Stream<T> untuk meng-ignore jumlah di awal ketika kondisi test masih oke

### Transform Method

- cast<R> : Stream<R> untuk mengkonversi value Stream
- map(R convert(T)) : Stream<R> untuk mengkonversi value Stream dengan function convert
- expand(Iterable<R> convert(T)) : Stream<R> untuk mengkonversi value Stream menjadi Iterable<R> namun hasil iterable dijadikan data Stream selanjutnya
- asyncMap(Future<R> convert(T)) : Stream<R> sama seperti map() namun hasil convert nya adalah Future<R>
- asyncExpand(Stream<R> convert(T)) : Stream<R> sama seperti expand(), namun hasil convert nya adalah Stream<R>

### Fold and Reduce

Kadang ada kebutuhan kita ingin membuat perhitungan data dari tiap Stream, contoh kita ingin melakukan total untuk semua data di Stream<int>, kita bisa gunakan method fold and reduce

- fold(initial, combine) : Future<R>, untuk melakukan combine data dari tiap data di stream, dengan initial data yag diberikan
- reduce(combine) : Future<R>, untuk melakukan combine data dari tiap data di stream, namun tidak dengan initial data

### Broadcast Stream

- Seperti yang sudah kita bahas di awal, Stream hanya bisa di subscribe oleh satu Stream Subscription
- Namun ada jenis Stream yang bisa di subscribe oleh lebih dari satu Stream Subscription, yaitu Broadcast Stream
- Untuk membuat Broadcast Stream, kita bisa gunakan method asBroadcastStream() pada Stream yang sudah kita buat

### Timer

- timer adalah class di dart yang bisa kita gunakan untuk membuat pekerjaan yang terjadwal secara priodik
- https://api.dart.dev/stable/2.18.4/dart-async/Timer-class.html

### Delayed Timer

- jenis timer pertama timer delayed task, dimana kita bisa meminta timer untuk menjalankan sebuah task setelah baas waktu tertentu
- kita gunakan constructor
- Timer(duration, callback) untuk membuat delayed job di callback yang akan di jalankan setelah waktu duration tercapai

### Periodic Timer

- jenis timer kedua adalah periodic timer, dimana kita bisa meminta timer untuk menjalankan sebuah task secara priodik
- kita gunakan constructor
- Timer.periodic(duration, callback) untuk membuat periodic job di callback yang akan di jalankan setelah waktu duration tercapai

### Async 

- dart mirip seperti di javascript, dimana kita bisa membuat sebuah kode asynchronous menggunakan kata kunci async
- di dart, kita bisa membuat function Future<T> dengan menggunakan async, sehingga kode yang kita buat terlihat seperti synchronous

#### Masalah di Future

- saat kita menggunakan banyak sekali kode asynchronous menggunakan future, kadang ketika melakukan manipulasi datanya akan membuat kita sulit untuk dibaca

### Await

- saat kita membuat function dengan kata kunci async, didalamnya kita bisa menggunakan kata kunci await
- kata kunci await terlihat seperti then() method dari future, tapi sebenarnya cara kerjanya tidak seperti itu, cara kerjanya terlihat lebih mudah di bava karena seperti gaya kode synchronous
- cara menggunakan kata kunci await cukup tambahkan di future yang ingin kita ambil datanya

### Try Catch Async Await

- salah satu keunggulan menggunakan async await, selain kode kita terlihat seperti kode synchronous
- kita juga bisa menggunakan try catch finally layaknya di kode synchronous

### Async Await Stream

- selain digunakan untuk future, async await juga bisa digunakan dalam stream
- dengan begitu kita bisa menggunakan Stream seperti perulangan biasa
- namun perlu diperhatikan, saat menggunakan async await stream, pastikan Stream akan selesai

### Isolate

- seperti yang diawal dijelaskan, bahwa semua kode dart dijalankan di dalam isolate dengan single thread
- karena hanya menggunakan satu thread, ketika ada kode yang melakukan blocking, maka secara otomatis kode tersebut akan melakukan blocking seluruh event loop
- hal ini sangat berbahaya, karena bisa membuat semua proses stuck, tidak berjalan
- https://api.dart.dev/stable/2.18.4/dart-isolate/Isolate-class.html

### Membuat Isolate

- pada kasus diatas, kita bisa coba jalankan function block di isolate berbeda, sehingga tidak mengganggu isolate utama yang sedang digunakan untuk menjalankan aplikasi
- untuk membuat isolate kita bisa gunakan static methos:
- Isolate.spawn(function(T), T)
- dimana function akan dieksekusi di isolate berbeda dengan mengirim parameter T

###  Recive dan Send Port

### komunikasi Antar Isolate

- karena isolate berjalan dengan isolate lainnya, bagaimana pada kasus kita ingin mendapatkan nilai dari hasil perhitungan isolate lain
- misal kita ingin mengeksekusi function di isolate lain, namun hasil dari function nya ingin kita simpan dapatkan di isolate utama misalnya

### Recive dan Send Port

- pada kasus ini, kita bisa menggunakan Recive dan Send Port
- ini mirip dengan channel jika di golang, dimana kita bisa mengirim dan menerima data dari isolate lain
- kita cukup buat RecivePost, lalu kirim SendPort yang terdapat di RecivePort nya ke isolate lain
- di isolate lain, kita bisa mengirim data menggunakan sendPort tersebut
- RecivePort mirip seperti Stream, jadi kita bisa listen data dari RecivePort
- https://api.dart.dev/stable/2.18.4/dart-isolate/ReceivePort-class.html
- https://api.dart.dev/stable/2.18.4/dart-isolate/SendPort-class.html

### Completer

- dart memiliki class bernama complete, yang bisa kita gunakan mempern=mudah membuat future
- saat misal kita integrasi dengan library orang lain yang menggunakan callback, kita ingin melakukan wrapping menjadi future, kita bisa menggunakan completer
- https://api.dart.dev/stable/2.18.4/dart-async/Completer-class.html

### Stream Controller

- selain completer yang bisa digunakan untuk membuat future, dart juga menyediakan class Stream Controller untuk membuat Stream
- kasusnya juga cocok ketika kita membuat stream misal ketika kita menggunakan library orang lain yang menggunakan callback
- https://api.dart.dev/stable/2.18.4/dart-async/StreamController-class.html

### Generator

- dart memiliki fitur bernama generator, yang bisa digunakan untuk membuat data collection sync ataupun asunc
- data sync akan mengembalikan Iterable<T> sedangkan data async akan mengembalikan Stream<T>
- untuk membuat generator sync kita gunakan kata kunci sync* 
- untuk membuat generator async kita gunakan kata kunci async* 
- untuk mengembalikan value nya, kita bisa gunakan yield value

### yield*

- selain yield, untuk mengirim value di generator, terdapat yield*, yang bisa digunakan untuk mengirim seluruh data Iterable<T> atau Stream<T>

### Async Package

- semua class dart async terdapat di package dart:async
- namun diluar itu, tim dart membuat package khusus yang berisi class-class bantuan untuk fitur dart async, yaitu package async
- https://pub.dev/packages/async

### Async Cache

- AsyncClass merupakan class di async package yang digunakan untuk menjalankan async function, namun hasilnya disimpan di memory selama durasi waktu tertentu
- jika durasi waktu sudah lewat, maka async function akan di eksekusi lagi
- https://pub.dev/documentation/async/latest/async/AsyncCache-class.html

### Async Memoizer

- AsyncMemoizer adalah class yang mirip dengan AsyncCache, yang membedakan adalah asyn memoize akan menyimpan data secara permanen, tanpa ada durasi waktu
- https://pub.dev/documentation/async/latest/async/AsyncMemoizer-class.html

### Future Test

- package test di dart dapat digunakan untuk melakukan pengetesan kode async dalam bentuk future
- hal ini mempermudah ketika kita akan membuat unit test kode Asynchronous
- di dalam test(), kita bisa masukan function async, sehingga bisa menggunakan await

### Future Matcher

- jika kita menggunakan async await kita bisa mengetest kode future seperti kode synchronous
- namun jika kita tidak menggunakan async await, kita bisa menggunakan function completion() untuk membantu melakukan mathcer data Future

### Stream Test

- package test juga menyediakan banyak function matcher untuk membantu kita ketika melakukan pengetesan terhadap jenis data stream

### Stream Matcher

- 