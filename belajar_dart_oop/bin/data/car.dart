class Car {
  String name = '';

  void drive(){

  }

  int getTire(){
    return 0;
  }

}

abstract class HasBrand{
  String getBrand();
}

// kode implements interface
class Avanza implements Car, HasBrand{
  String name = 'Avanza';

  void drive(){
    print("avanza is running");
  }

  int getTire(){
    return 4;
  }
  
  String getBrand() => 'toyota';
}

