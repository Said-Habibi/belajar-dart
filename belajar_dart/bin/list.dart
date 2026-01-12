void main() {
  // list merupakan tipe data yang berisikan kumpulan data
  // di bahasa pemogramman lain, tipe data ini dikenal dengan tipe data array
  // saat kita membuat list, kita perlu menentukan isi dari tipe data list
  // untuk membuat data list, kita bisa menggunakan []
  // di dart, semua tipe data adalah objek, dimana list sendiri memiliki property, method dan operator
  // sekarang kita akan bahas beberapa method dan operator di list, untk lebih detail nanti kita akan bahas
  // https://api.dart.dev/stable/2.13.4/List-class.html
  // https://api.dart.dev/dart-core/List-class.html

  // membuat list
  // untuk membuat list, kita bisa menentukan tipe datanya, misalnya :
  // List<TipeData> namaVariable = [];
  // atau bisa menggunakan kata kunci var atau final:
  // var namaVariable = tipeData[];
  // final namaVariable = tipeData[];

  // kode list
  List<int> listInt = [];
  var listString = <String>[];

  // menambah data ke dalam list
  // data dalam list, kita bisa tambah lebih dari satu, anggap saja List adalah sebuah tabel, dimana kita bisa menambah banyak baris di tabel nya
  // ukuran list akan otomatis bertambah ketika kita menambahkan data ke dalam list
  // untuk menambahkan data ke list, kita bisa menggunakan method add(value)
  // dan untuk mengetahui jumlah data yang ada di list, kita bisa menggunakan properti length

  // kode menambah data list
  listInt.add(1); // method add untuk menambah
  var ukuran = listInt.length; // properti length untuk mengetahui ukuran list
  print(ukuran);
  print(listInt);

  // index
  // selain menambahkan data di list, kita juga bisa mengubah data di list atau mendapatkan data di list
  // saat kita menambahkan data di list, secara otomatis data tersebut memiliki index (int), index ini digunakan untuk kita mengakses, mengubah atau menghapus data di list
  // index di list dimulai dari angka 0, dan akan terus bertambah seiring jumlah data yang kita masukkan
  // artinya jika memiliki jumlah data list sebanyak length, index terakhir adalah length - 1

  // manipulasi data di list
  /*
| Operator / Method    | Keterangan                                      |
|----------------------|------------------------------------------------|
| `list.add(value)`    | Menambah data ke List                          |
| `list[index]`        | Mengambil data di List                         |
| `list[index] = value`| Mengubah data di List                          |
| `list.removeAt(index)`| Menghapus data di List, index secara otomatis akan bergeser |
*/

  // kode manipulasi data di list

  List<String> names = ['said', 'habibi', 'eko', 'budi'];
  print(names.length);
  names.add('joko');
  print(names.length);

  print(names[0]);
  names[0] = 'arwin';
  print(names[0]);

  names.removeAt(2);
  print(names);

  // deklarasi list secara langsung
  // list juga mendukung deklarasi data secara langsung ketika pembuatan variable list
  // ini mempermudah kita ketika membuat list jika memang datanya sudah siap
  // caranya bisa menggunakan perintah
  // var namaVariable = [value1, value2];
  // var namaVariable = <tipeData>[value1, value2];
  /* var namaVariable = [
          value1,
          value2
          ];
  * */

  //  kode deklarasi list secara langsung
  var nilai = [1,2,3];
  var Nilai = <int>[1,2,3];
  var NiLai = [
    1,
    2,
    3
  ];

  print(nilai);
  print(NiLai);
  print(Nilai);

}