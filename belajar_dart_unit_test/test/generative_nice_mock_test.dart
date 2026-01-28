// test/generate_nice_mock_test.dart
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// Import class yang ingin di-mock dari LIB folder
import 'package:belajar_dart_unit_test/book_repository.dart';
import 'package:belajar_dart_unit_test/book.dart';
import 'package:belajar_dart_unit_test/book_service.dart';

import 'generative_nice_mock_test.mocks.dart';

// Ini akan generate file: generate_nice_mock_test.mocks.dart
@GenerateNiceMocks([MockSpec<BookRepository>()])
void main() {
  test('Test dengan Mockito', () {
    // 1. Buat mock object dari BookRepository
    final mockRepo = MockBookRepository();

    // 2. Setup behavior mock
    when(
      mockRepo.finById('123'),
    ).thenReturn(Book('123', 'Dart Programming', 100000));

    // 3. Test
    final book = mockRepo.finById('123');
    expect(book?.id, '123');
    expect(book?.name, 'Dart Programming');
    expect(book?.price, 100000);

    // 4. Verify
    verify(mockRepo.finById('123')).called(1);
  });

  group("BookService", () {
    var bookRepository = MockBookRepository();
    var bookService = BookService(bookRepository);

    test("Save new book must success", () {
      bookService.save("1", "Tutorial Dart", 100000);
      verify(bookRepository.save(Book("1", "Tutorial Dart", 100000))).called(1);
    });
    test("find by id", () {
      var book = Book("1", "tutorial Dart", 100000);
      when(bookRepository.finById("1")).thenReturn(book);

      var result = bookService.find("1");
      expect(result, equals(book));

      verify(bookRepository.finById("1")).called(1);
    });

    test("find by id Said123", () {
      var book = Book("said123", "tutorial Dart", 100000);
      when(bookRepository.finById(any)).thenReturn(book);

      var result = bookService.find("said123");
      expect(result, equals(book));

      verify(bookRepository.finById(any)).called(1);
    });
  });
}
