class Shape{
  int getCorner(){
    return 0;
  }
}

class Rectangle extends Shape{
  int getCorner(){
    return 4;
  }

  int getParentCorner(){
    return super.getCorner(); // mengambil corner parent
  }
}

void main(){
  var shape = Shape();
  print(shape.getCorner());
  var shapeCorner = shape.getCorner();
  print(shapeCorner);

  var rectangle = Rectangle();
  print(rectangle.getCorner());
  var rectangeCorner = rectangle.getCorner();
  print(rectangeCorner);

  // menggunakan method yang ada di parent melalui child class
  var rectangle2 = Rectangle();
  print(rectangle2.getParentCorner());
  var rectangeCorner2 = rectangle2.getParentCorner();
  print(rectangeCorner2);
}

