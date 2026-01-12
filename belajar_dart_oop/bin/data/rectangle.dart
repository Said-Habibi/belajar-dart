class Rectangle {
  int _width = 0;
  int _length = 0;

  // getter and setter

  // menggunakan expression body
  int get width => _width;
  set width(int value) => _width = value;

  // tidak menggunakan expression body
  int get length{
    return _length;
  }
  set length(int value){
    // lakukan validasi agar getter dan setter terasa berguna
    if (value >= 1){
      _length = value;
    }
  }


}