import 'dart:ffi';

void main(){
  // set merupakan tipe data sama seperti list, namun ada beberapa hal yang berbeda dengan list
  // set tidak menerima duplikat data, artinya jika kita memasukan data duplikat, hanya satu yang diterima, yang lainnya akan dihiraukan
  // set tidak menjamin urutan data, jika dalam list, urutan data sudah pasti menggunakan index, pada set tidak ada index

  // membuat set
  // untuk membuat set, tidak sama dengan membuat list
  // untuk membuat set, kita menggunakan {} (kurung kurawal)
  // set<tipeData> namaVariable = {};
  // var namaVariable = <tipeData>{};

  Set<int> number = {};
  var strings = <String>{};
  var doubles = <Double>{};

  /*
| Operator / Method / Property | Keterangan            |
|------------------------------|-----------------------|
| `set.length`                 | Mendapatkan panjang Set |
| `set.add(value)`             | Menambah data ke Set    |
| `set.remove(value)`          | Menghapus data dari Set |
*/

  var names = <String>{};
  names.add('said');
  names.add('habibi');

  print(names);
  print(names.length);

  names.remove('habibi');
  print(names);
  print(names.length);

  names.remove('Tidak Ada'); // tidak error

  // deklarasi set secara langsung
  // set juga mendukung deklarasi data secara langsung ketika pembuatan variable set
  // ini mempermudah kita ketika membuat set jika memang datanya sudah siap
  // caranya bisa menggunakan perintah:
  // var namaVariable = {v1,v2,v3};
  // var namaVariable = <tipeData>{v1,v2,v3};
  /* var namaVariable = {
          v1,
          v2,
          v3
          };
   */

  // kode
  var numbers = {
    1,
    2,
    3
  };
}