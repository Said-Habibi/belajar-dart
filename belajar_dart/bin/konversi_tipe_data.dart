void main() {
  // kadang ada kebutuhan kita melakukan konversi tipe data, terutama dari tipe data string ke number dan boolean, atau bahkan sebaliknya
  // hal ini biasa kita lakukan ketika misal menerima input dari pengguna aplikasi kita, dimana biasanya inputnya dalam bentuk string, dan kita butuh melakukan konversi ke tipe data yang kita inginkan, misal number atau boolean

  // konversi number dan string
  // dart merupakan bahasa pemograman berorientasi objek, semua tipe data di dart adalah objek, dimana objek memiliki method/function
  // kita bisa menggunakan method toString() untuk melakukan konversi dari number ke string
  // sedangkan untuk melakukan konversi dari string ke number, kita bisa gunakan method parse(), baik itu di int maupun double
  // sedangkan jika kita ingin melakukan konversi dari number ke number lain, kita bisa gunakan method toInt() atau toDouble()

  // kode konversi string dan number
  var inputString = '1000';
  var inputInt = int.parse(inputString);
  var inputDouble = double.parse(inputString);

  var doubleFromInt = inputInt.toDouble();
  var intFromDouble = inputDouble.toInt();

  var stringFromInt = intFromDouble.toString();
  var stringFromDouble = doubleFromInt.toString();

  // konversi boolean dan string
  // untuk melakukan konversi tipe data boolean ke string, kita bisa menggunakan method toString()
  // sedangkan untuk melakukan konvrsi tipe data string ke boolean, tidak ada caranya, oleh karena itu untuk melakukan hal ini, biasanya menggunakan operator perbandingan, yang akan kita bahas di materi tersendiri

  // kode konversi boolean dan string
  var inputString1 = 'true';
  var inputBool = inputString1 == 'true';

  print(inputBool);

  var stringFromBool = inputBool.toString();

}