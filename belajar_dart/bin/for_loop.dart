void main(){
  /*
  for adalah salah satu kata kunci yang bisa digunakan untuk melakukan perulangan
  blok kode yang terdapat di dalam for akan selalu di ulangi selama kondisi for terpenuhi
   */

  /*
  sintaks perulangan for
  for (init statement;kondisi;post statement){
    // block perulangan
  }
  init statement akan dieksekusi hanya sekali diawal sebelum perulangan
  kondisi akan dilakukan pengecekan setiap perulangan, jika true perulangan akan dilakukan, jika false perulangan akan berhenti
  post statement akan dieksekusi setiap kali diakhir perulangan
  init statement, kondisi dan post statement tidak wajib diisi, jika kondisi tidak diisi, berarti kondisi selalu bernilai true
   */

  // kode perulangan tanpa henti
  // for (;;){
  //   print('perulangan tanpa henti');
  // }

  // kode perulangan dengan kondisi
  var counter = 1;

  for(;counter <=10;){
    print('perulangan ke-$counter');
    counter++;
  }

}