void main(){
  /*
  ternary operator adalah operator sederhana dari if
  ternary operator terdiri dari kondisi yang dievaluasi, jika menghasilkan true maka nilai pertama diambil, jika false, maka nilai kedua diambil
   */

  // kode tanpa ternary operator
  var nilai = 75;
  String ucapan;

  if (nilai >= 75){
    ucapan = 'selamat anda lulus';
  }
  else{
    ucapan = 'maaf anda tidak lulus';
  }

  print(ucapan);

  // kode ternary operator
  var Ucapan = nilai >= 75 ? 'selamat anda lulus' : 'maaf anda gagal';
  print(Ucapan);
}