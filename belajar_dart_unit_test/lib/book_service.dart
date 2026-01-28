import 'package:belajar_dart_unit_test/book.dart';
import 'package:belajar_dart_unit_test/book_repository.dart';

class BookService {
  BookRepository bookRepository;

  BookService(this.bookRepository);

  void save(String id, String name, int price) {
    if (id == "" || name == "" || price <= 0) {
      throw Exception("invalid data");
    }
    // coba kalian komentar ini sebelum ada pengecekkan, tidak akan terjadi error
    // karena mock object tidak akan throw exception
    bookRepository.save(Book(id, name, price));
  }

  void update(String id, String name, int price) {
    if (id == "" || name == "" || price <= 0) {
      throw Exception("invalid data");
    }
    var book = bookRepository.finById(id);
    if (book == null) {
      throw Exception("book not found");
    } else {
      book.name = name;
      book.price = price;
      bookRepository.update(book);
    }
  }

  Book find(String id) {
    var book = bookRepository.finById(id);
    if (book == null) {
      throw Exception("book not found");
    } else {
      return book;
    }
  }

  void delete(String id) {
    var book = bookRepository.finById(id);
    if (book == null) {
      throw Exception("book not found");
    } else {
      bookRepository.delete(book);
    }
  }
}
