import 'package:belajar_dart_unit_test/book_repository.dart';
import 'package:belajar_dart_unit_test/book.dart' hide BookRepository;

class BookService {
  BookRepository bookRepository;

  BookService(this.bookRepository);

  void save(String id, String name, int price){
    if (id == "" || name == "" || price <= 0){
      throw Exception("invalid data");
    }
    bookRepository.save(Book(id,name,price));
  }
  void update(String id, String name, int price){
    if (id == "" || name == "" || price <= 0){
      throw Exception("invalid data");
    }
    var book = bookRepository.finById(id);
    if (book == null){
      throw Exception("book not found");
    } else {
      book.name = name;
    }
  }
}

