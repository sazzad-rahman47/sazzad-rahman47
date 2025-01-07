void main() {

  Book book1 = Book("The Alchemist", "Paulo Coelho", 1988);
  Book book2 = Book("1984", "George Orwell", 1949);
  Book book3 = Book("To Kill a Mockingbird", "Harper Lee", 1960);

  book1.read(100);
  book2.read(50);
  book3.read(120);

  print("Book 1:");
  print("Title: ${book1.getTitle()}");
  print("Author: ${book1.getAuthor()}");
  print("Publication Year: ${book1.getPublicationYear()}");
  print("Pages Read: ${book1.getPagesRead()}");
  print("Book Age: ${book1.getBookAge()} years\n");

  print("Book 2:");
  print("Title: ${book2.getTitle()}");
  print("Author: ${book2.getAuthor()}");
  print("Publication Year: ${book2.getPublicationYear()}");
  print("Pages Read: ${book2.getPagesRead()}");
  print("Book Age: ${book2.getBookAge()} years\n");

  print("Book 3:");
  print("Title: ${book3.getTitle()}");
  print("Author: ${book3.getAuthor()}");
  print("Publication Year: ${book3.getPublicationYear()}");
  print("Pages Read: ${book3.getPagesRead()}");
  print("Book Age: ${book3.getBookAge()} years\n");

  print("Total Books Created: ${Book.totalBooks}");
}

class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;

  Book(this.title, this.author, this.publicationYear, [this.pagesRead = 0]) {
    totalBooks++;
  }

  void read(int pages) {
    if (pages > 0) {
      pagesRead += pages;
      print("$pages pages read from '$title'. Total Pages Read: $pagesRead\n");
    } else {
      print("Invalid page count. Please provide a positive value.\n");
    }
  }

  int getPagesRead() => pagesRead;
  String getTitle() => title;
  String getAuthor() => author;
  int getPublicationYear() => publicationYear;

  int getBookAge() => DateTime.now().year - publicationYear;
}
