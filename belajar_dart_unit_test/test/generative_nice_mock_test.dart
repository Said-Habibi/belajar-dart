// test/generate_nice_mock_test.dart
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

// Import class yang ingin di-mock dari LIB folder
import 'package:belajar_dart_unit_test/book.dart'; // PASTIKAN PATH INI BENAR!

// Ini akan generate file: generate_nice_mock_test.mocks.dart
@GenerateNiceMocks([
  MockSpec<BookRepository>(),
])
void main() {
  test('Test dengan Mockito', () {
    // 1. Buat mock object dari BookRepository
    final mockRepo = MockBookRepository();
    
    // 2. Setup behavior mock
    when(mockRepo.findById('123'))
      .thenReturn(Book('123', 'Dart Programming', 100000));
    
    // 3. Test
    final book = mockRepo.findById('123');
    expect(book?.id, '123');
    expect(book?.name, 'Dart Programming');
    expect(book?.price, 100000);
    
    // 4. Verify
    verify(mockRepo.findById('123')).called(1);
  });
} 