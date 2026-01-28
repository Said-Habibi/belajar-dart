import 'package:belajar_dart_unit_test/book.dart';
class BookRepository {
  void save(Book book){
    print("save $book");
    throw UnsupportedError("save gagal");
  }
  void update(Book book){
    print("update $book");
    throw UnsupportedError("update gagal");
  }
  void delete(Book book){
    print("delete $book");
    throw UnsupportedError("delete gagal");
  }
  void finById(Book book){
    print("find by id $book");
    throw UnsupportedError("find gagal");
  }
}