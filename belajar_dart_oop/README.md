A sample command-line application with an entrypoint in `bin/`, library code
in `lib/`, and example unit test in `test/`.

Apa itu objek oriented programming?
- objek oriented programming adalah sudut pandang bahasa pemogramman yang berkonsep "objek"
- ada banyak sudut pandang bahasa pemogramman, namun OOP adalah yang sangat populer
- ada beberapa istilah yang perlu dimengerti dalam OOP, yaitu: Objek dan Class

apa itu objek?
- objek adalah data yang berisi field/ properties/ artibutes dan method/ function/ behavior
- semua data di dart adalah objek

apa itu class?
- class adalah blueprint, prototype atau cetakan untuk membuat objek
- class berisikan deklarasi semua propeties dan functions yang dimiliki oleh objek
- setiap objek selalu dibuat dari class
- dan sebuah class bisa membuat objek tanpa batas

membuat class
- untuk membuat class, kita bisa menggunakan kata kunci class
- penamaan class baiasa menggunakan format PascalCase

membuat objek
- objek adalah hasil instaniasi dari sebuah class
- untuk membuat objek kita bisa menggunakan nama class lalu diikuti dengan kurung ()

buka file class.dart


field
- field / properties / attributes adalah data yang bisa kita sisipkan di dalam objek
- namun sebelum kita bisa memasukkan data di fields, kita harus mengdeklarasikan data apa saja yang dimiliki objek tersebut di dalam deklarasi class
- membuat field sama seperti membuat variable, namun ditempatkan di block class
field wajib dimasukan nilai nya, kecuali field yang nullable

memanipulasi field
- field yang ada di objek, bisa kita manipulasi, tergantung final atau bukan
- jika final, berarti kita tidak bisa mengubah data field nya, namun jika tidak, kita bisa mengubah field nya
- untuk memanipulasi data field, sama seperti cara pada variable
- untuk mengakses field, kita butuh kata kunci . (titik) setelah nama objek dan diikuti nama fieldnya

method
- selain menambahkan field, kita juga bisa menambahkan method ke objek
- method adalah function yang terdapat di dalam class
- cara dengan mendeklarasikan method tersebut di dalam block class
- sama seperti function biasanya, kita juga bisa menambah return value, parameter di method yang ada di dalam block class
- untuk mengakses method tersebut, kita bisa menggunakan tanda titik(.) dan diikuti dengan nama method nya, sama seperti mengakses field

method expression body
- saat membuat method, kadang-kadang kita hanya menggunakan satu baris kode
- jika kita membuat method dengan body sangat sederhana, kita bisa gunakan expression body
- expression body mirip seperti kita membuat anonymous function

extension method
- extension method adalah cara menambahkan method terhadap class yang sudah ada, tanpa harus mengubah class tersebut
- hal ini kadang bermanfaat jika misal class nya adalah milik library yang bukan milik kita yang membuatnya 

membuat extension method
- membuat extension method hampir mirip dengan membuat class, namun kita perlu menggunakan kata kunci extension diikuti nama extension lalu diikuti kata kunci on dan nama class yang ingin kita tambahkan extension method nya

operator
- operator adalah method dengan nama yang spesial
- dart memperbolehkan kita membuat method dengan nama operator

cek di google daftar operator dart

membuat operator
- untuk membuat operator, kita bisa membuat method, namun nama method diganti menjadi kata kunci operator diikuti dengan operatornya

constructor
- saat kita membuat objek, maka kita seperti memanggil sebuah method, karena kita menggunakan kurung()
- di dalam class, kita bisa membuat constructor, constructor adalah method yang akan dipanggil saat pertama kali objek dibuat
- mirip seperti di method, kita bisa memberi parameter pada constructor
- nama constracor harus sama dengan nama class, dan tidak membutuhkan kata kunci void atau return value
- ketika kita menambahkan costractor pada class, maka saaat membuat objek baru, kita wajib mengikuti parameter yang ada di constructor

variable shadowing
- variable shadowing adalah kejadian ketika membuat nama variable dengan nama yang sama di scope yang menutupi variable dengan nama yang sama di scope diatasnya
- ini biasa terjadi seperti kita membuat nama parameter di method sama dengan nama field di class
- saat terjadi variable shadowing, maka secara otomatis variable di scope siatasnya tidak bisa diakses

this keyword
- saat kita membuat kode di dalam block constructor atau method di dalam class, kita bisa menggunakan kata kunci this untuk mengakses objek saat ini
- misal kadang kita butuht mengakses sebuah field yang namanya sama dengan parameter method, hal ini tidak bisa dilakukan jika langsung menyebut nama field, kita bisa mengakses nama field tersebut dengan kata kunci this
- this juga tidak hanya digunakan untuk mengakses field milik objek saat ini, namun juga bisa digunakan untuk mengakses method
- this bisa digunakan untuk mengatasi masalah variable shadowing

initializing formal parameter
- kadang saat membuat constructor, biasanya kita membuat parameter yang hanya bisa digunakan untuk mengubah nilai yang ada di field
- untuk kasus ini, kita bisa menggunakan fitur formal parameter, dimana pada parameter kita bisa langsung sebutkan field mana yang akan diubah
- formal parameter hanya bisa digunakan di constructor, tidak bisa di method
- caranya kita cukup ubah parameternya dengan menggunakan this.namaField nya, tanpa perlu menggunakan tipe data

named constructor
- constructor hanya bisa dinuat satu saja, mirip seperti function atau method, kita tidak bisa membuat beberapa dengan nama yang sama
- namun terdapat fitur yang bernama named constructor, yaitu constructor dengan nama yang berbeda
- dengan menggunakan named constructor, kita bisa membuat constructor lebih dari satu, namun wajib menggunakan nama yang berbeda
- untuk membuatnya kita bisa menggunakan nama class.namaConstructor nya
- named constructor bisa lebih dari satu

menggunakan named constructor
- untuk membuat objek menggunakan named constructor, kita bisa langsung mengakses menggunakan class.namedConstructor()

redirecting constructor
- saat membuat named constructor, kita bisa memanggil default constructor, atau istilahnya adalah melakukan redirecting constructor
- cara membuat redirecting constructor adalah dengan menambahkan : (titik dua), lalu diikuti dengan memanggil this(parameter), dimana this() disini adalah dianggap mengakses default constructor
- saat membuat redirecting constructor, kita tidak bisa menambahkan body pada redirecting constructor

redirecting ke named constractor
- redirecting juga bisa dilakukan ke named constructor
- caranya kita ganti ketika memanggil this menjadi this.namedConstructor()

initializer list
- saat kita membuat constructor atau named constructor, tardapat fitur yang bernama initializer list
- initializer list merupakan tempat dimana kita bisa mengubah field pada objek, sebelum block body constructor
- hal ini menjadi lebih mudah dibanding mengubah field di dalam block constructor

constant constructor
- saat kita membuat class yang tidak pernah berubah datanya (immutable data), ada baiknya kita buat constructor nya dalam bentuk constant
- untuk membuat constant constructor kita bisa gunakan kata kunci const
- keuntungan saat menggunakan constant constructor adalah, ketika kita membuat constant objek, secara otomatis objek yang sama akan digunakan

factory constructor
- factory constructor adalah sebuah fitur dimana kita bisa membuat constructor untuk membuat objek baru, namun logika cara pembuatan objek barunya bisa kita sesuaikan dengan yang kita inginkan
- misal kita ingin mengembalikan objek yang sama berkali-kali, kita bisa menggunakan factory constructor
- untuk membuat factory constractor kita bisa menggunakan kata kunci factory sebellum pembuatan constructor nya

casade notation
- cascade notation merupakan operator ang bisa kita gunakan untuk memberikan bebrapa operasi pada objek yang sama
- ada dua jenis cascade notation, yaitu ..(titik titik), dan ?..(tanda tanya titik titik)
- .. digunakan untuk objek yang tidak nullable, sedangkan ?.. digunakan untuk objek yang nullable

inheritance
- inheritance atau pewarisan adalah kemampuan untuk menurunkan sebuah class ke class lain
- dalam artian, kita bisa membuat class parent dan class child
- class child, hanya bisa punya satu class parent, namun satu class parent bisa punya banyak class child
- saat sebuah classs diturunkan, maka semua field dan method yang ada di class parent, secara otomatis akan dimiliki oleh class child
- untuk melakukan pewarisan, di class child, kita harus menggunakan kata kunci extends lalu diikuti dengan nama class parent nya

method overriding
- method overriding adalah kemampuan mendeklarasikan ulang method di child class, yang sudah ada di parent class
- saat kita melakukan proses overriding tersebut, secara otomatis ketika kita membuat objek dari class child, method yang di class parent tidak bisa diakses lagi
- saat melakukan method overriding, kita harus pastikan deklarasi methodnya harus sama dengan di parent class nya

field overriding
- field verriding adalah kemampuan mendeklarasikan ulang field di child class, yang sudah ada di parent class
- saat kita melakukan proses overising tersebut, secara otomatis ketika kita membuat objek dari class child, filed yang di class parent tidak bisa diakses lagi
- saat melakukan field overriding, kita harus pastikan deklarasi field nya harus sama dengan di parent class nya

super keyword
- kadang kita ingin mengakses method yang terdapat di class parent yang sudah terlanjut kita override di class child
- untuk mengakses method milik class parent, kita bisa menggunakan kata kunci super
- sederhananya, super digunakan untuk mengakses class parent
- tidak hanya method, field milik parent class pun bisa kita akses menggunakan kata kunci super

super constructor
- tidak hanya untuk mengakses metthod atau field yang ada di parent class, kata kunci super juga bisa digunakan untuk mengakses constructor
- namun syaratnya untuk mengakses parent class constructor, kita harus mengaksesnya di dalam class child constructor
- memanggil super constructor hanya bisa dilakukan dalam bentuk redirecting constructor

objek class
- setiap class yang kita buat secara otomatis adalah turunan dari class objek, kecuali null
- walaupun tidak secara langsung kita eksplisit menyebutkan extends objek, tapi otomatis akan membuat class kita extends objek
- bisa dikatakan class objek adlah superclass untuk semua class
- https://api.dart.dev/dart-core/Object-class.html

polymorphism
- polymorphism berasal dari bahasa yunani yang berarti banyak bentuk
- dalam oop, polymorphism adalah kemampuan sebuah object berubah bentuk menjadi bentuk lain
- polymorphism erat hubungannya dengan inheritance

type check & casts
- saat menggunakan polymorphism, kadang kita ingin melakukan konversi tipe data ke tipe data aslinya
- namun agar aman, sebelum melakukan konversi, pastikan kita melakukan type check (peengecekan tipe data), dengan menggunakan kat kunci is
- hasil operator is adalah boolean, true jika tipe data sesuai, false jika tidak sesuai 
- untuk melakukan konversi tipe data objek, kita bisa gunakan kata kunci as

import
- import adalah kemampuan untuk menggunakan class, atau function atau variable yang berada di file yang berbeda
- import sangat cocok digunakan ketika kode program kita sudah banyak dan ditempatkan di banyak file

abstract class
- saat kita membuat class, kita bisa menjadikan sebuah class sebagai class.
- abstract class artinya, class tersebut tidak bisa dibuat sebagai objek secara langsung, hanya bisa diturunkan
- untuk membuat sebuah class menjadi abstract, kita bisa menggunakan kata kunci abstract
- dengan demikian abstract class nosa kita gunakan sebagai kontrak untuk class child

abstract method
- saat kita membuat class yang abstract, kita bisa membuat abstract method juga di dalam class abstract tersebut
- saat kita membuat sebuah abstract method, kita tidak boleh membuat block method untuk method tersebut
- artinya, abstract method wajib di override di class child

access modifier
- secara default, saat kita membuat field atau method adlam sebuah class, maka semua field dan method tersebut bisa diakses oleh siapa saja
- kadang-kadang kita ingin menyembunyikan field atau method
- untuk menyembunyikan akses field atau method, kita bisa menambahkan _(underscore) di awal field atau method
- secara otomatis field atau method tersebut, hanya bisa di akses dari file tersebut, dan artinya tidak bisa diakses dari luar file

encapsulation
- encapsulation artinya memastikan data sensitif sebuah objek tersembunyi dari akses luar
- hal ini bertujuan agar kita bisa menjaga agar data sebuah objek tetap baik dan valid
- untuk mencapai ini, biasanya kita akan membuat semua field yang tidak bisa diakses dari luar
- agar bisa diubah, kita hanya menyediakan method untuk mengubah dan mendapatkan field tersebut

getter and setter 
- proses encapsulation sudah dibuat standarisasinya, dimana kita bisa menggunakan getter dan setter
- getter adalah function yang dibuat untuk mengambil data filed
- setter adalah function yang dibuat untuk mengubah data field
- untuk getter, kita bisa menggunakan kata kunci get
- untuk setter, kita bisa menggunakan kata kunci set

expression body
- jika getter dan setter yang kita buat isinya hanya mengambil dan mengubah field, disarankan untuk menggunakan expressin body
- cara membuat expression body mirip seperti anonymous function

getter dan setter yang tidak perlu 
- dalam bahasa pemogramman seperti java atau C#, penggunaan getter dan setter sudah menjadi sesuatu yang lumrah, hal ini karena mengakses field dan method sangatlah berbeda, oleh karena itu dari awal selalu dibuat getter dan setter
- di dart, hal ini tidak berlaku, jika ini getter dan setter hanya melakukan redirect data ke field, disarankan tidak perlu menggukanan getter dan setter, cukup langsung saja menggunakan field
- hal ini dikarenakan dalam dart, jika kedepannya kita ingin menambah getter dan setter, kita bisa tambahkan, tanpa harus mengubah kode
- https://dart.dev/tools/linter-rules/unnecessary_getters_setters

interface
- kita sudah tahu bahwa abstract class bisa kita gunakan sebagai kontrak untuk class child nya.
- namun sebenarnya yang lebih tepat untuk kontrak adalah interface
- jangan salah sangka bahwa interface disini bukan user interfae
- interface mirip seperti abstract class, yang membedakan adalah di interface, semua method otomatis abstract
- untuk mewariskan interface, kita tidak menggunakan kata kunci extends, melainkan implements

membuat interface
- hal yang sangat berbeda di dart dan bahasa pemogramman java, php dan lain-lain adalah saat kita membuat interface
- interface di dart bisa diambil dari class apapun, saat kita membuat sebuah class, secara otomatis class tersebut merupakan interface untuk class itu sendiri
- interface dari class tersebut, bisa kita gunakan pada class lain jika kita ingin
- maka secara otomatis, kita harus mendeklarasikan semua method dan fieldnya yang terdapat pada class tersebut, karena yang kita ambil sebenarnya adalah interface nya, bukan class nya
- anggap saja interface adalah kontrak dari pembuat class

multiple interface inheritance
- hal yang membedakan ketika kita melakukan pewarisan adalah, kita hanya bisa melakukan extends terhadap satu class, namun kita bisa melakukan implements terhadap beberapa class
- hal ini dikarenakan sebenarnya implements bukanlah melakukan pewarisan, melainkan mendeklarasi ulang seluruh method dan field
- anggap saja ini seperti membuat class yang berbeda, namun memiliki field dan method yang sama
- untuk melakukan multiple implements, kita bsa gunakan pemisah tanda koma antar class yang kita implements

mixin
- mixin merupakan reusable code yang digunakan di kelas lain tanpa perlu terkendala dengan pewarisan
- mixin mirip melakukan copy paste code di beberapa tempat, namun cara yang lebih baik
- dengan mixin, kita bisa membuat kode yang sama pada beberapa class
- satu class bisa menambah lebih dari satu mixin, sama seperti interface
- untuk membuat mixin, kita bisa menggunakan kata kunci mixin
- untuk menggunakan mixin, kita bisa menggunakan kata kunci with, diikuti dengan mixin nya

membatasi mixin
- secara default, semua class bisa menggunakan mixin
- namun jika kita ingin membatasi hanya class turunan tertentu, kita bisa tambahkan kata kunci on, diikuti dengan class yang kita batasi pada mixin nya

toString method
- sebelumnya kita sudah bahas bahwa parent class untuk semua class kecuali null adalah object
- di dalam Object, terdapat method yang bernama toString(), method ini merupakan method untuk representasi String dari object
- contohnya, saat kita menggunakan function print(object), sebenarnya yang dipanggil adalah pront(object.toString())
- kita bisa meng-override method toString() jika kita ingin mengimplementasikan representasi data String dari class yang kita buat

equals operator
- untuk membandingkan dua buah object apakah sama atau tidak, biasanya kita menggunakan operator ==
- secara default operator == adalah milik class Object, implementasinya jika kita menggunakan operator == milik class Object adalah akan melakukan pengecekan kesamaan object dari lokasi di memory
- kadang-kadang, kita ingin mengimplementasikan logika untuk membandingkan objek
- untuk hal ini, kita bisa melakukan override operasot == yang ada di class objek

hashcode getter
- hashcode getter adalah representasi integer object kita, mirip toString yang merupakan representasi String, hashcode adalah representasi integer
- hashcode sangat bermanfaat untuk membuat struktur data unique seperti HashMap, HashSet, dan lain-lain, karena cukup menggunakan hashCode method untuk mendapatkan identitas unique object kita
- secara default hashCode akan mengembalikan nilai integer sesuai data memory, namun kita bisa meng-override nya jika kita ingin

kontrak hashcode method

tidak mudah meng-override method hashCOde, karena ada kontraknya:
- sebanyak apapun hashCode dipanggil, untuk object yang sama, harus menghasilkan data integer yang sama
- jika ada 2 object yang sama jika dibandingkan menggunakan method equals, maka nilai hashCode nya juga harus sama

no such method
- NoSuchMethod merupakan sebuah method yang terdapat di class object yang bisa kita override untuk mendeteksi atau beraksi ketika sebuah method yang tidak ada dipanggil
- NoSuchMethod hanya bisa digunakan ketika tipe objectnya adalah dynamic atau sebuah abstract class
- https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.html
- https://stackoverflow.com/questions/53761294/nosuchmethod-in-dart
- https://api.dart.dev/stable/3.5.4/dart-core/Object/noSuchMethod.html
- https://api.dart.dev/stable/3.5.4/dart-core/Invocation/Invocation.method.html

No such method untuk abstract class
- salah satu penggunaan NoSuchMethod yang biasanya adalah sebagai implmentasi abstract class
- dengan menggunakan NoSuchMethod, kita tidak perlu mengimplementasikan method yang terdapat di abstract class lagi

no such method untuk interface
- selain abstract class, nosuchmethod juga bisa digunakan sebagai implementasi untuk interface

Callable class
- callable class merupakan class yang dipanggil seperti function
- untuk membuat callable class, kita perlu menambahkan sebuah method bernama call() di class tersebut
- parameter dan return value dari method tersebut disesuaikan sesuai keinginan kita 
- setelah membuat objectnya, kita bisa langsung memanggil method call() tersebut menggunakan nama objectnya saja

typedef
- typedef merupakan fitur dimana kita membuat alis untuk tipe data lainnya
- ini cocok ketika misal terdapat class dengan nama yang sama, sehingga kita bisa menggunakan alias untuk nama lain
- atau kita bisa mempersingkat nama class yang panjang dengan alias

typedef untuk function
- typedef juga tidak hanya bisa digunakan untuk membuat alias untuk class, tapi juga bisa digunakan untuk membuat alis untuk function
- namun perlu diperhatikan, sangat direkomndasikan tetap mendeklarasikan function menggunakan deklarasi function nya, dibandingkan menggunakan typedef
- https://dart.dev/effective-dart/design#prefer-inline-function-types-over-typedefs

static
- static merupakan sebuah kata kunci yang digunakan untuk membuat field dan method yang bisa diakses tanpa harus membuat object nya
- saat kita membuat field atau method yang static, artinya dia secara otomatis bisa diakses oleh object manapun, oleh karena itu perlu hati-hati ketika membuat field atau method static
- field atau method static bisa diakses oleh method yang tidak static
- namun field atau method static, tidak bisa mengakses field atau method yang tidak static
- biasanya static digunakan untuk membuat utility
- untuk mengakses static field atau method, kita bisa langsung menggunakan nama class diikuti dengan titik dan static field atau method nya

enum
- enum merupakan fitur membuat tipe data yang sudah jelas nilainya
- untuk membuat enum, kita bisa menggunakan kata kunci enum

exception
- saat kita membuat aplikasi, kita tidak akan terhindar dengan yang namanya error
- error direspresentasikan dengan istilah exception, dan semua direpresentasikan dalam bentuk class exception
- kita bisa menggunakan class exception sendiri, atau menggunakan yang sudah disediakan
- untuk membuat sebuah exception, kita bisa menggunakan kata kunci throw, diikuti dengan object exception nya

membuat class exception
- selain menggunakan class exception yang sudah tersedia, kita juga bisa membuat class exception sendiri
- tidak ada kontrak dalam pembuatan class exception, kita bisa membuat class biasa
- namun sangat direkomendasikan jika membuat class exception baru, kita melakukan implements ke class exception

try catch
- saat kita memanggil sebuah method yang bisa menyebabkan exception, maka secara otomatis rogram akan berhenti
- jika kita tidak ingin program berhenti, kita perlu menangkap exception tersebut, dan melakukan sesuatu ketika terjadi exception
- untuk menangkap exception, kita bisa menggunakan try-catch
- cara menggunakan try-cathc sangat mudah, di block try, kita tinggal panggil method yang bisa menyebabkan exception, dan diblock catch, kita bisa melakukan sesuatu jika terjadi exception

finally
- dalam try-cathc, kita bisa menambahkan blck finally
- block finally ini adalah block dimana akan selalu dieksekusi baik terjadi exception ataupun tidak
- ini sangat cocok ketika kita ingin melakukan sesuatu, tidak pedulu sukses ataupun gagal

try catch semua exception
- kadang kita tidak terlalu peduli dengan jenis class Exception
- pada kasus seperti ini, kita bisa tidak menyebutkan class nya ketika melakukan try-catch

stack trace
- saat kita menangkap exception, object exception tidak memiliki posisi atau lokasi terjadinya error
- jika kita ingin mengetahui posisi atau lokasi terjadinya error, kita bisa menambahkan parameter kedua pada cacth
- secara otomatis parameter kedua tersebut adalah sebuah object StactTrace
- https://api.dart.dev/dart-core/StackTrace-class.html

error
- selain exception, ada jenis kesalahan lagi yaitu error
- berbeda dengan exception, error adalah jenis kesalahan yang harus dihindari, dan jika terjadi, lebih baik segera hentikan program nya
- error biasanya terjadi karena ada kesalahan pada kode program kita
- contoh, kita mengakses index yang salah di list
- https://api.dart.dev/stable/3.3.1/dart-core/Error-class.html

metadata
- metadata merupakan fitur yang digunakan untuk menambah informasi tambahan pada kode program yang kita buat
- untuk menambahkan informasi tambahan ke dalam kode program kita, kita bisa menggunakan annotation yang dimulai dengan karakter @ lalu diikuti dengan constant atau memanggil constant constructor

membuat annotation
- membuat annotation sangat mudah, kita bisa membuat constant atau bisa membuat class dengan menggunakan constant construtor

manfaat metadata
- saat ini, metadata mungkin tidak terlihat begitu berguna
- namun saaat nanti kita sudah belajar tentang reflection, maka kita akan bisa tahu manfaat yang bisa kita dapat ketika menggunakan metadata


