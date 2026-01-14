A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

- Membuat Project Aplikasi
``dart create --template=console-full belajar_dart_packages_application``

- Menjalankan Aplikasi
``dart run``

Dependency
- ketika kita membutuhkan library di alikasi dart, kita bisa tambahkan dependency tersebut di file pubspec.yaml pada bagian dependecies
- misal kita akan coba tambahkan dependencies library yang sudah kita buat

Download Dependency
- setelah kita tambahkan dependency di file pubspec.yaml, selanjutnya kita perlu download dependency tersebut ke local kita dengan perintah:
``dart pub get``
- semua dependency akan di download ke local HOME/.pub-cache/

Import
- setelah kita menambahkan dan download dependency ke aplikasi, selanjutnya kita bisa gunakan library dependency tersebut menggunakan import

Import As
- kadang saat melakukan import beberapa packages, ada kalanya terdapat conflict, misal ada function dengan nama yang sama, atau class dengan nama yang sama
- pada kasus seperti ini, salah satu hal yang cocok adalah membuat prefic untuk packages yang kita import
- ntuk menambah prefix atau alias, kita bisa gunakan kata kunci as diikuti nama prefix/alias nya setelah di import
- ketika menggunakan import as, maka kita wajib menggunakan prefix/alias tersebut sebelum memanggil function atau class yang terdapat di packages tersebut

Compile
Dart Platform
- teknologi compiler dart memungkinkan kita menjalankan aplikasi dengan beberaa cara
- native platform, untuk aplikasi dengan target perangkat mobile atau desktop, dart menyertakan dart VM dengan just-in-time (JIT) compiler dan ahead-of-time (AOT) untuk memproduksi kode mesin
- web platform, untuk aplikasi dengan target web, dart menyertakan development time compiler (dartdevc) dan production time compiler (dart2js). Keduanya melakukan kompilasi dari dart ke JavaScript
- pada kelas ini kita fokus membahas dart nativ platform dengan target perangkat desktop

Cross Operation System
- dart tidak mendukung kompilasi untuk target sistem operasi berbeda
- oleh karena itu, jika kita ingin membuat distribusi file untuk sistem operasi berbeda, maka kita harus melakukannya di sistem operasi tersebut, misal mac untuk mac, linux untuk linux, dan windows untuk windows
- https://github.com/dart-lang/sdk/issues/28617

Dart Compile
``dart compile exe bin/belajar_dart_packages_application.dart``

Upgrade Packages    
- melakukan upgrade library adalah hal yang sudah biasa
- hal yang perlu kita lakukan ketika upgrade library adalah, menaikan versi dart packages di file pubspec.yaml
- jika menggunakan git, disarankan untuk menambah tag baru untuk versi baru

Upgrade Dependency
- selanjutnya setelah kita mengubah versi dari dependency di pubspec.yaml, kita perlu donwload dependency terbaru menggunakan perintah :
``dart pub upgrade``

Pub.dev
- sebelumnya kita menggunakan Git untuk menyiman dart packages yang kita buat, Git cocok ketika kita misal dart packages untuk kebutuhan internal perusahaan kita, namun jika kita ingin membuat dart packages misal untuk opensource, Google telah menyediakan website bernama https://pub.dev/
- namun untuk menyimpan dart packages di pub.dev, kita harus terverifikasi sebagai publisher, dengan syarat memiliki domain
- silahkan daftar dan registrasi sebagai publisher di pub.dev

Publish Packages ke pub.dev
- perlu diingat, ketika publish dart packages kita ke pub.dev, maka ini akan ada selamanya. kita tidak bisa menghapus yang sudah kita publish, karena ditakutkan ketika banyak yang menggunakan dart packages kita, lalu kita hapus, maka otomatis semua project dart orang lain akan rusak
- selain itu pastikan menambahkan LICENSE file dan ukutan dart packages kita tidak lebih dari 100mb

Dry Run
- sebelum publish packages kita, kita bisa mencoba memastikan tidak ada masalah, dengan mencoba dry run cara nya menggunakan perintah:
``dart pub publish --dry-run``

Publish packages
- jika sudah tidak ada masallah dengan dart packages kita, kita bisa publish ke pb.dev dengan perintah:
``dart pub publish``
- ketika pertama kali publish, biasanya kita akan diminta untuk login menggunakan google account

Transfer ke Publisher

Download Dependency dari Pub.dev
- selanjutnya, jika kita sudah upload dart packages ke pub.dev, kita bisa bah dependency di aplikasi kita, agar tidak menggunakan Git lagi

kode dependency dari pub.dev
``dependencies:
    belajar_dart_packages_library: 1.5.0``


