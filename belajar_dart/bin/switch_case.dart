void main(){
  // kadang kita hanya butuh menggunakan kondisi sederhana di if, seperti hanya menggunakan perbandingan ==
  // switch adalah statement percabangan yang sama dengan if, namun lebih sederhana cara pembuatanya
  // kondisi di switch hanya untuk perbandingan ==

  String nilai = 'B';

  switch(nilai){
    case 'A':
      print('wow anda lulus dengan sempurna');
      break;
    case 'B':
    case 'C':
      print('anda lulus');
      break;
    case 'D':
      print('anda tidak lulus');
      break;
    default:
      print('mungkin anda salah jurusan');
  }
}