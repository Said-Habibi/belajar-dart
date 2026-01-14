<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

TODO: Put a short description of the package here that helps potential users
know whether this package might be useful for them.

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.

## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to 
contribute to the package, how to file issues, what response they can expect 
from the package authors, and more.

Pengenalan Dart Packages 

Dart Packages 
- ekosistem dart menggunakan packages untuk melakukan manajemen software yang bisa di sharing, seperti library atau tool
- saat kita membuat project di dart, sebenarnya secara tidak langsung kita membuat packages
- packages bisa dalam bentuk aplikasi atau library (yang digunakan pada aplikasi)

Keuntungan Menggunakan Packages
- dengan menggunakanpackages, kita akan mengikuti cara management kode dart
- dengan packages juga bisa melakukan dependency management secara otomatis tanpa harus download library yang kita butuhkan secara manual

Membuat Dart Library
dart create --template=package-simple belajar_dart_packages_library

Struktur Directory Packages
- salah satu keuntungan menggunakan packages adalah, struktur directory yang standard untuk project dart
- secara minimal, saat kita membuat dart packages, hanya butuh file pubspec.yaml dan folder lib
- pubspec.yaml digunakan untuk konfigurasi dart packages nya, sedangkan folder lib menyimpan kode program dart kita
- namun saat kita membuat project menggunakan perintah dart creat, struktur directory nya lebih kompleks

Directory src
- salah satu best practice di dart packages adalah, tidak mengekspos kode dart kecuali memang dibutuhkan
- dan salah satu best practice yang dilakukan di dart packages, biasanya kode program dart akan di tempatkan di folder src di dalam folder lib
- semua kode program dart di dalam src, secara default tidak diekspos ke luar
- ketika kiat butuh megekspos keluar (artonya bisa diakses oleh project lain), maka biasanya dilakukan secara eksplisit di kode dart di dalam folder lib

Pubspec
- saat kita membuat dart packages, hal yang paling utama adalah file punspec.yaml
- pubspec.yaml merupakan konfigurasi dari dart packages
- di dalam pubspec, kita perlu tentukan nama dart packages yang kita buat, termasuk dependency yang kita butuhkan di dart package tersebut

Membuat Library
- saat membuat kode dart di dart packages, disarankan lakukan di dalam folder src
- dan ketika melakukan imort kode dart dari library, jangan import dari folder dari folder src, hal ini karena kode dart di src biasanya digunakan sebagai internal library, dan tidak dijamin akan backward compatible ketika terjadi update library

Export Library
- setelah membuat kode dart di dalam folder src, kita bisa buat kode dart di lib yang digunakan untuk mengekspos bagian mana yang ingin kita ekspos
- kita bisa menggunakan kata kunci export jika ingin mengekspos semua kode di dalam file dart, atau gunakan export show jika hanya beberapa saja
- jangan lupa untuk menambahkan kata kunci library dan diikuti dengan nama library yang kita buat, walaupun tidak wajib, tapi direkomendasikan menggunakan nya, karena secara default jika kita tidak menambahkan library, secara otomatis nama library nya adalah string kosong

Import Library
- setelah membuat library, jika kita ingin menggunakannya, kita bisa mencobanya di folder example
- kita bisa melakukan import dengan pola:
package:name_library/file.dart

Publish Package ke Github
- setelah membuat library menggunakan dart packages, kita bisa menyimpannya di Git server, contohnya Github
- dart packages terintegrasi dengan baik dengan Git, sehingga kita bisa menambahkan library yang sudah kita buat ke aplikasi melalui Git
