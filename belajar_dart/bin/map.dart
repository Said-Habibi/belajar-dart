void main() {
  /*
  - map adalah tipe data key-value, key mirip index, value adalah data nya
  - sekilas mirip dengan list, yang membedakan adalah, index pada list sudah diatur oleh list secara otomatis,
    dan nilainya berupa int auto increment dimulai dari nol
  - sedangkan pada map, key nya bisa ditentukan dengan tipe data apapun, dan kita perlu tentukan secara manual keynya ketika kita memasukan value nya
  - jika kita memasukan dengan keey yang sudah ada, secara otomatis data yang lama akan diganti dengan data yang baru
   */

  /*
  membuat map
  - untuk membuat map, kita menggunakan perintah sebagai berikut
  Map<tipeKey, tipeValue > namaVariable = {};
  var namaVariable = Map<tipeKey, tipeValue>{};
  var namaVariable = <tipeKey, tipeValue>{};
   */

  Map<String, String> persons = {};
  var product = Map<String, String>();
  var address = <String, String>{};

  print(persons);


  /*
| Operator / Method / Property | Keterangan            |
|------------------------------|-----------------------|
| `map.length`                 | Mendapatkan panjang Map |
| `map[key]`                   | Mendapatkan data di Map  |
| `map[key] = value`           | Mengubah data di Map     |
| `map.remove(key)`            | Menghapus data di Map    |
   */

  var names = <String, String>{};

  names['firts'] = 'muhammad';
  names['middle'] = 'said';
  names['last'] = 'habibi';

  print(names);
  print(names['firts']);

  names['middle'] = 'nugraha';
  print(names);

  names.remove('last');
  print(names);

  // deklarasi map secara langsung

  // cara nya
  // var namaVariable = {
  //      key1 : value1,
  //      key2 : value2,
  //      key3 : value3,
  //  }

  var nama = {
    'firts' : 'muhammad',
    'middle' : 'said',
    'last' : 'habibi'
  };
  print(nama);
}