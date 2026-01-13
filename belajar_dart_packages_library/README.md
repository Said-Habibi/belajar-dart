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

