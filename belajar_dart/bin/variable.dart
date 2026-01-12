void main() {
  String name;
  int angka;
  angka = 1;
  name = 'muhammad said habibi';

  // kata kunci var
  // saat kita membuat variable langssung dengan nilainya, kita bisa mnggunakan kata kunci var sebagai pengganti tipeData nya
  // ini mirip dengan bahasa pemograman seperti java, golang, kotlin dan lain-lain
  // tipeData akan dibaca ssuai dengan isi nya secara otomatis oleh dart, sehingga kita tidak perlu menyebutkan tipeData nya lagi
  // cara menggunakan kata kunci var, seperti ini:
  // var namaVariable = value;

  // kode var
  var nama = "said";

  // kata kunci final
  // secara default, variable di dart bisa dideklarasikan ulang, artinya jika sebelumnya kita membuat variable name dengan value "said", kita bisa ubah variable tersebut menjadi "joko" dengan cara namaVariable = "joko";
  // kadang ada kasus dimana kita tidak ingin sebuah variable bisa dideklarasikan ulang, untuk melakukan itu kita bisa gunakan kata kunci final:
  // final tipeData namaVariable = value;
  // final namaVariable = value;

  // kode final
  var firtsName = "said";
  final lastName = "habibi";

  firtsName = ""; // tidak error
  // lastName = ""; // error

  // kata kunci const
  // kata kunci final digunakan agar variable tidak bisa dideklarasikan ulang, namun nilai dari variable nya sndiri bisa diubah
  // di dart terdapat kata kunci constant, digunakan untuk menjadikan variable dan nilainya menjadi immutable(tidak dapat di ubah sama sekali)
  // kata kunci const akan menjadikan data di hardcode pada saat dart melakukan kompilasi kode program, jadi hati-hati ketika menggunakan kata kunci const
  // misal jika kita membuat data waktu saat ini menggunakan final, maka variable waktu akan selalu mengikuti waktu saat ini, namun jika menggunakan const, nilai waktu akan di hardcode ketika kode program di kompilasi, sehingga tidak akan berubah

  // kode const
  final array1 = [1, 2, 3];
  const array2 = [1,2,3];

  array1[0] = 5;
  array2[0] = 5; // error

  print(array1);
  print(array2);

  // kata kunci late
  // di dart, secara setandar, variable akan dideklarasikan nilainya ketika variable dibuat
  // namun kadang ada kasus dimana kita ingin variable dideklarasikan nanti saja, ketika memang variable tersebut diakses, jika tidak di akses, tidak perlu dideklarasikan
  // untuk melakukan hal ini, kita bisa tambahkan kata kunci late di awal deklarasi variable

  // kode late
  late var value = getValue();
  print('Display value');
  print(value);
}
// ini fungsi biasa
String getValue() {
  print('getValue dipanggil');
  return 'said';
}