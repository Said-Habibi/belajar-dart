A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Pengenalan Generic
- Generic adalah kemampuan menambahkan parameter type saat membuat class atau method
- berbeda dengan tipe data yang biasa kita gunakan di class, di function, generic memungkinkan kita bisa mengubah ubah bentuk tipe data sesuai dengan yang kita mau

Manfaat Generic
- pengecekan ketika proses kompilasi
- tidak perlu manual menggunakan tipe data dan konversi tipe data
- memudahkan programmer membuat kode program yang generic sehingga bisa digunakan oleh berbagai tipe data

Generic Class
- Generic class adalah class yang memiiki parameter type
- tidak ada ketentuan dalam pembuatan generic parameter type, namun biasanya kebanyakan orang menggunakan 1 karakter sebagai generic parameter type
- nama generic parameter type yang biasa digunakan adalah:
-- E - element (biasa digunakan di collection atau strucktur data)
-- K - key
-- N - number
-- T - type
-- V - value
-- S,U,V,etc - 2nd, 3rd, 4th types

Multiple Parameter Type
- parameter type di generic class boleh lebih dari satu
- namun harus menggunakan nama type berbeda
- ini sangat berguna ketika kita ingin membuat generic parameter type yang banyak

Generic Function
- generic arameter type tidak hanya bisa digunakan pada class
- kita juga bisa menggunakan generic parameter type di function
- generic parameter type yang kita deklarasikan di function, hanya bisa diakses di function tersebut, tidak bisa digunakan di luar function
- ini cocok jika kita ingin membuat generic functon, tanpa harus mengubah deklarasi class

Bounded Type Parameter
- kadang kita ingin membatasi data yang boleh digunakan di generic parameter type
- kita bisa menambahkan constrain di generic parameter type dengan menyebutkan tipe yang diperbolehkan
- secara otomatis, type data yang bisa digunakan adalah type yang sudah kita sebutkan, atau class_class turunannya
- secara default, constraint type untuk generic parameter type adalah Object, sehingga semua tipe data yang bisa digunakan

Dynamic
- kadanag ada kasus kita tidak peduli dengan generic parameter type pada object
- misal kita hanya ingin mem-print data T, tidak peduli tipe apapun
- jika kita mengalami kasus seperti ini, kita bisa menggunakan dynamic
- dynamic bisa dibuat dengan menghapus tipe data generic nya
- semua tipe data generic otomatis menjadi tipe data dynamic ketika menggunakan fitur ini

Covariant
- covariant artinya kita bisa melakukan subtisusi subType(child) dengan supertype(parent)
- namun hati-hati ketika melakukan covariant, karena jika sampai salah mengubah datanya, maka akan terjadi error pada saat runtime, tidak akan terdeteksi ketika proses compile

Type Checking
- Generic di Dart mendukung Type Checking, berbeda dengan Java yang menggunakan fitur type erasure, yang artinya ketika di-compile, informasi generic nya dihilangkan. Pada Dart, semua informasi generic tetap ada
- Oleh karena itu kita bisa melakukan Type Checking di Dart walaupun sampai ke level parameterized type nya
