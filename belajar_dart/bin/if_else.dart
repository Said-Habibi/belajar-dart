void main(){
  // if
  // dalam dart, if adalah salah satu kata kunci yang digunakan untuk percabangan
  // percabangan artinya kita bisa mengeksekusi kode program tertentu ketika suatu kondisi terpenuhi
  // hampir di semua bahasa pemogramman mendukung percabangan if
  var nilai = 80;
  var absen = 60;

  if(nilai >= 75 && absen >= 75){
    print('anda lulus');
  }

  // else
  // blok if akan dieksekusi ketika kondisi if bernilai true
  // kadang kita ingin melakukan eksekusi program tertentu ketika kondisi if bernilai false
  // hal ini bisa dilakukan menggubakan else

  else{
    print('tidak lulus');
  }
  // else if
  // kadang dalam if, kita butuh membuat beberapa kondisi
  // kasus seperti ini, kta bisa gunakan else if
  // else if bisa ditambahkan sebanyak banyaknya
  // ketika salah satu kondisi terpenuhi, maka otomatis akan berhenti, if else selanjutnya tidak akan dieksekusi

  cekNilaiVariable(60, 70);

}
dynamic cekNilaiVariable(int n, int a){
  if(n >= 80 && a >= 80){
    print('Nilai anda A');
  }
  else if(n >=70 && a >= 70){
    print('Nilai anda B');
  }
  else if(n >= 60 && a >= 60){
    print('Nilai anda C');
  }
  else if(n >= 50 && a >= 50){
    print('nilai anda C');
  }
  else {
    print('Nilai anda E');
  }
}