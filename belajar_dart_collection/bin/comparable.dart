import 'dart:collection';

class Category implements Comparable<Category>{
  String id;
  String name;

  Category(this.id,this.name);

  @override
  int compareTo(Category other){
    return id.compareTo(other.id);
  }

  @override
  String toString() => 'Category $id, $name';
}

void main(){
  final treeset = SplayTreeSet<Category>();
  treeset.add(Category('2', 'Category2'));
  treeset.add(Category('1', 'Category1'));
  treeset.add(Category('3', 'Category3'));

  print(treeset);

  for (var category in treeset){
    print(category);
  }
}