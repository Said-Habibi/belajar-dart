class DataBase{
  DataBase(){
    print('Create new data base conection');
  }
  // 
  static DataBase dataBase = DataBase();
  factory DataBase.get(){
    return dataBase;
  }
}

void main(){
  var dataBase1 = DataBase();
  var dataBase2 = DataBase();

  print(dataBase1 == dataBase2);
}