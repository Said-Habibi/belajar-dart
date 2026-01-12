class Product {
  String? id;
  String? name;
  int? _quantity;

  int? _getquantity(){
    return _quantity;
  }

  // method to string kita override
  String toString(){
    return "Product{id=$id, name=$name, quantity=$_quantity}";
  }

}

