import 'dart:io';

import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main(){
  test("test gagal ", (){
    expect(1, 2);
  }, retry: 5);
}