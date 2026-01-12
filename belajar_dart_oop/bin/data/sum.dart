class Sum {
  int first;
  int second;

  Sum(this.first,this.second);

  // membuat method menggunakan call
  int call(){
    return first + second;
  }

}

// kode typedef
typedef Jumlah = Sum;
typedef Total = Sum;

void main(){
  var sum = Sum(1, 2);
  // memamnggil class yang sudah ada method dengan menggunakan call()
  sum();

  var jumlah = Jumlah(10,10);
  print(jumlah());
}