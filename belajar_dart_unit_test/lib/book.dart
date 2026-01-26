class Book {
  final String id;
  final String name;
  final int price;

  Book(this.id,this.name,this.price);
}

abstract class BookRepository{
  Book? findById(String id);
}
// class Book {
//   String id;
//   String name;
//   int price;
//
//   Book(this.id, this.name, this.price);
//
//   @override
//   bool operator ==(Object other) =>
//       identical(this, other) ||
//       other is Book &&
//           runtimeType == other.runtimeType &&
//           id == other.id &&
//           name == other.name &&
//           price == other.price;
//
//   @override
//   int get hashCode => id.hashCode ^ name.hashCode ^ price.hashCode;
//
//   @override
//   String toString() {
//     return 'Book{id: $id, name: $name, price: $price}';
//   }
// }
//
// class BookRepository {
//   // Simpan daftar buku untuk contoh sederhana
//   final Map<String, Book> _books = {};
//
//   void save(Book book) {
//     print("save $book");
//     _books[book.id] = book;
//   }
//
//   void update(Book book) {
//     print("update $book");
//     if (_books.containsKey(book.id)) {
//       _books[book.id] = book;
//     } else {
//       throw Exception("Book not found in repository");
//     }
//   }
//
//   void delete(Book book) {
//     print("delete $book");
//     _books.remove(book.id);
//   }
//
//   // Mengembalikan Book, bukan void
//   Book? findById(String id) {
//     print("find by $id");
//     return _books[id]; // Bisa null jika tidak ditemukan
//   }
// }
//
// class BookService {
//   BookRepository bookRepository;
//
//   BookService(this.bookRepository);
//
//   void save(String id, String name, int price) {
//     if (id.isEmpty || name.isEmpty || price <= 0) {
//       throw Exception("invalid data");
//     }
//     bookRepository.save(Book(id, name, price));
//   }
//
//   void update(String id, String name, int price) {
//     if (id.isEmpty || name.isEmpty || price <= 0) {
//       throw Exception("Invalid data");
//     }
//
//     var book = bookRepository.findById(id);
//     if (book == null) {
//       throw Exception("book not found");
//     } else {
//       // Buat buku baru dengan data yang diperbarui
//       var updatedBook = Book(id, name, price);
//       bookRepository.update(updatedBook);
//     }
//   }
// }
//
// void main() {
//   // Contoh penggunaan
//   var repository = BookRepository();
//   var service = BookService(repository);
//   try {
//     service.save("1", "Dart Programming", 100000);
//     service.update("1", "Dart Programming Advanced", 120000);
//   } catch (e) {
//     print("Error: $e");
//   }
// }