''' Write a Python program to model a Library system. The program should include a class named Library with the following specifications: 

   1. Class Attributes: ○ total_books: A class attribute representing the total number of books available in the library. ○ all_books: A class attribute that stores a list of all books available. 

 2. Instance Attributes: ○ name:Nameof the library member. ○ borrowed_books: A list to keep track of books borrowed by the member. 

 3. Methods: ○ borrow_book(self, book): A method to borrow a book from the library. The method should: ■ Checkif the book is available

. ■ Addthebook to the member's borrowed list. 

 ■ Removethe book from the library's all_books list. 

 ■ Decrease total_books by 1

. ■ If the book is not available, return a message saying "Book not available." ○ return_book(self, book): A method to return a book. The method should: 

 ■ Addthebook back to the library's all_books list.

 ■ Removethe book from the member's borrowed_books list. 

 ■ Increase total_books by 1. 

 4. Class Method: ○ view_library_books(cls): A class method that prints the total number of books and lists all available books.'''







class Library:
    # Class attributes
    total_books = 0
    all_books = []

    def __init__(self, name):
        # Instance attributes
        self.name = name
        self.borrowed_books = []

    def borrow_book(self, book):
        """
        Method to borrow a book from the library.
        - If the book is available, it is borrowed and removed from the library's inventory.
        - If the book is not available, a message is returned.
        """
        if book in Library.all_books:
            self.borrowed_books.append(book)
            Library.all_books.remove(book)
            Library.total_books -= 1
            print(f'{self.name} borrowed "{book}".')
        else:
            print("Book not available.")

    def return_book(self, book):
        """
        Method to return a book to the library.
        - The book is added back to the library's inventory.
        - It is removed from the member's borrowed books.
        """
        if book in self.borrowed_books:
            self.borrowed_books.remove(book)
            Library.all_books.append(book)
            Library.total_books += 1
            print(f'{self.name} returned "{book}".')
        else:
            print(f'{self.name} did not borrow "{book}".')

    @classmethod
    def view_library_books(cls):
        """
        Class method to view all available books in the library and the total count.
        """
        print(f'Total number of books in the library: {cls.total_books}')
        if cls.all_books:
            print("Books available in the library:")
            for book in cls.all_books:
                print(f'- {book}')
        else:
            print("No books available in the library.")

# Example usage:

# Create a library and add books
Library.all_books = ['Harry Potter', 'Lord of the Rings', 'Python Programming', 'Data Structures']
Library.total_books = len(Library.all_books)

# View library books before borrowing
Library.view_library_books()

# Create library member instances
member1 = Library('Alice')
member2 = Library('Bob')

# Member borrows books
member1.borrow_book('Harry Potter')
member2.borrow_book('Python Programming')

# View library books after borrowing
Library.view_library_books()

# Member returns books
member1.return_book('Harry Potter')
member2.return_book('Python Programming')

# View library books after returning
Library.view_library_books()



#output
Total number of books in the library: 4
Books available in the library:
- Harry Potter
- Lord of the Rings
- Python Programming
- Data Structures
Alice borrowed "Harry Potter".
Bob borrowed "Python Programming".
Total number of books in the library: 2
Books available in the library:
- Lord of the Rings
- Data Structures
Alice returned "Harry Potter".
Bob returned "Python Programming".
Total number of books in the library: 4
Books available in the library:
- Lord of the Rings
- Data Structures
- Harry Potter
- Python Programming


