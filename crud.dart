class Book {
  String title;
  String author;
  Book(this.title, this.author);
}

class Library {
  final List<Book> _books = [];

  void addBook(Book book) => _books.add(book);
  void removeBook(String title) =>
      _books.removeWhere((book) => book.title == title);
  List<Book> getBooks() => _books;
}

void main() {
  Library library = Library();
  library.addBook(Book('Dart Basics', 'Alice'));
  library.addBook(Book('Flutter 101', 'Bob'));

  print('Books in library:');
  library
      .getBooks()
      .forEach((book) => print('- ${book.title} by ${book.author}'));
}
