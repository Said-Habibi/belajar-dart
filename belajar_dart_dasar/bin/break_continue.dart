

void main(){
  /*
  pada switch case, kita sudah mengenal kata kunci break, yaitu untuk menghentikan case dalam switch
  sama dengan pada perulangan, break juga digunakan untuk menghentikan seluruh perulangan
  namun berbeda dengan continue, continue digunakan untuk menghentikan perulangan saat ini, lalu melanjutkan ke perulangan selanjutnya
   */

  // kode break
  var counter = 1;

  while(true){
    print('loop ke-$counter');
    counter++;

    if (counter > 10) {
      break;
    }
  }

  // kode continue
  for (var counter = 1; counter <= 100; counter++){
    if (counter % 2 == 0){
      continue;
    }
    print('perulangan ganjil-$counter');
  }
}