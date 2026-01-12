void main(){
  /*
  do while loop adalah perulangan yang mirip dengan while
  perbedaannya hanya pada pengecekan kondisi
  pengecekkan kondisi di while loop dilakukan di awal sebelum perulangan dilakukan, sedangkan di do while loop dilakukan setelah perulangan
  oleh karena itu dalam do while loop, minimal pasti sekali perulangan dilakukan walaupun kondisi false
   */

  // kode do while loop
  var counter = 100;

  do {
    print('loop ke-$counter');
    counter++;
  }
  while(counter <=10);
}