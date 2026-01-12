class Category {
  String id = '';
  String name = '';

  Category(this.id, this.name);

  // buka menu lalu generate untuk mendapatkan generate otomatis dari android studio
  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is Category &&
  //         runtimeType == other.runtimeType &&
  //         id == other.id &&
  //         name == other.name;
  //
  // @override
  // int get hashCode => Object.hash(id, name);

  bool operator ==(Object other) {
    if (other is Category) {  
      if (id != other.id) {
        return false;
      }
      else if (name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }


  // ini overide ke hashcode agar id dan name memiliki hashcode yang sama
  int get hashCode{
    var result = id.hashCode;
    result += name.hashCode;
    return result;
  }
}
