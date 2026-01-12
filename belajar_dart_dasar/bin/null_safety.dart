void main(){
  /*
  di beberapa bahasa pemogramman, NullPointerExeption adalah salah satu kesalahan yang sangat sering dilakukan oleh programmer
  biasanya NullPointerExeption terjadi ketika kita mengakses sebuah data, yang ternyata data tersebut adalah null
  dart mendukung null safety, dimana ini bisa membantu programmer dari melakukan kesalahan mengakses data null
   */

  /*
  null check
  secara default, saat kita akan mengakses property, method atau operator terhadap data yang nullable (bisa null), maka dart akan memberi compile error
  dart akan meminta kita melakukan null check terlebih dahulu, sebelum mengakses data nullable nya
   */

  int? age = null;
  double doublteFromInt;
  if (age != null){
    doublteFromInt = age.toDouble();
  }

  // konversi nullable ke non nullable
  /*
  untuk melakukan konversi tipe data non nullable ke nullable, kita bisa langsung masukan data nya saja
  namun untuk melakukan konversi tipe data nullable ke non nullable, kita wajib melakukan null check terlebih dahulu
   */
  // kode konversi nullable ke non nullable
  String name = 'said';
  String? nullableName = name;

  int? nullableNumber;
  if (nullableNumber != null){
    int number = nullableNumber;
  }

  /*
  default value
  kadang kita butuh melakukan konversi dari tipe data nullable ke non nullable, namun jika datanya ternyata null, kita ganti dengan default value
  untuk melakukan hal tersebut, kita tidak perlu menggunakan if else, kita cukup menggunaan operator ?? (tanda tanya dua kali)
   */

  // kode default
  String? guest;

  var guestName = guest ?? 'Guest';

  /*
  konversi secara paksa
  dart mendukung konversi secara paksa dari tipe data nullable ke non nullable dengan menggunakan karakter ! (tanda seru) setelah nama variable nullable nya
  namun konsekuensinya, jika ternyata datanya null, maka otomatis akan terjadi error ketika aplikasi berjalan, jadi gunakan secara bijak
   */

  int? nullableNumbeR;
  nullableNumbeR = 10;
  int nonNullableNumber = nullableNumbeR!;

  /*
  mengakses nullable member
  saat kita mengakses member  (property,method,operator), maka secara default dark akan memberi peringatan untuk melakukan null check
  namun kita bisa mengakses nullable member secara aman, tanpa harus memaksa melakukan konversi, caranya dengan menggunakan tanda tanya (?)
  namun konsekuensinya, ketika kita mengakses nullable member, hasil dari member tersebut bisa jadi null kalo datanya ternyata null
   */
  //kode mengakses nullable member
  int? intNumber;
  double? doubleNumber = intNumber?.toDouble();

  print(doubleNumber);
  
}