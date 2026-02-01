import 'dart:io';

void main() {
  print('Masukkan nama Anda: ');
  String? nama = stdin.readLineSync();
  print('Halo $nama');
}
