void main() {
  // string merupakan tipe data text atau tulisan
  // untuk membuat string kita bisa menggunakan tanda kutip satu atau dua, lalu  didalamnya berisi nilai text nya
  // walaupun string bisa menggunakan kutip dua, tapi di sarankan menggunakan kutip satu saja

  // kode string
  String firtsName = 'said';
  String lastname = "habibi";

  print(firtsName);
  print(lastname);

  // string interpolation
  // string mendukung expression, dimana di dalam expression kita bisa mengambil data dari variable lain
  // untuk membuat expression, kita bisa menggunakan format ${isiExpression}, jika sederhana kita bisa langsung menggunakan $isiExpression

  var fullName = '$firtsName ${lastname}';

  print(fullName);

  // karakter backslash
  // karakter \ (backslash) di string bisa digunakan untuk menekankan bahwa karakter setelahnya dianggab benar karakter tersebut
  // seperti contohnya sebelumnya karakter $ dianggap expression, jika kita memang membuat karakter $ dalam string, maka gunakan \$, atau jika kita mau membuat karakter ' (petik satu), kita bisa gunakan \'

  // kode backslash

  var text = 'this is \'dart\' \$cool';

  print(text);

  // menggabungkan strng
  // kadang ada kebutuhan kita perlu menggabungkan beberapa data string
  // untuk menggabungkan beberapa data string, kita bisa menggunakan karakter + (tambah)
  // atau jika datanya tidak dalam bentuk variable, kita bisa langsung tambahkan hanya dengan karakter whitespace (spasi, enter, tab)

  // kode menggabungkan string
  var name1 = firtsName + ' ' + lastname;
  var name2 = 'said ' ' habibi';

  print(name1);
  print(name2);

  // multiline string
  // kadang kita butuh membuat string yang sangat panjang, shingga jika kita membuat dalam satu baris kode, kode tersebut akan terlalu panjang
  // string mndukung pembuatan data secara multiline, cara nya dengan menggunakan petik satu atau petik dua sebanyak tiga karakter

  // kode multiline string
  var longString = '''
  string ini sangat panjang
  sehingga sulit dibuat dalam 
  satu baris kode program
  ''';

  print(longString);
}