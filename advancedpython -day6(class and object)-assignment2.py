 '''Movie Library Create a class MovieLibrary that manages a collection of movies: 

 1. Class Attribute: ○ available_movies: A list of all movies available in the library.

 2. Instance Attributes: ○ member_name: The name of the library member. ○ borrowed_movies: A list of movies borrowed by the member. 

3. Methods: ○ borrow_movie(self, movie): Borrows a movie from the library if available. 

 ○ return_movie(self, movie): Returns a movie to the library.

 ○ view_borrowed_movies(self): Prints a list of movies borrowed by the member'''




class MovieLibrary:
    # Class attribute: List of all available movies in the library
    available_movies = []

    def __init__(self, member_name):
        # Instance attributes
        self.member_name = member_name
        self.borrowed_movies = []

    def borrow_movie(self, movie):
        """
        Method to borrow a movie from the library if it is available.
        If the movie is available, it is borrowed and removed from the available list.
        """
        if movie in MovieLibrary.available_movies:
            self.borrowed_movies.append(movie)
            MovieLibrary.available_movies.remove(movie)
            print(f'{self.member_name} borrowed "{movie}".')
        else:
            print(f'"{movie}" is not available for borrowing.')

    def return_movie(self, movie):
        """
        Method to return a movie to the library.
        The movie is added back to the available movies list.
        """
        if movie in self.borrowed_movies:
            self.borrowed_movies.remove(movie)
            MovieLibrary.available_movies.append(movie)
            print(f'{self.member_name} returned "{movie}".')
        else:
            print(f'{self.member_name} did not borrow "{movie}".')

    def view_borrowed_movies(self):
        """Method to view the list of movies borrowed by the member."""
        if self.borrowed_movies:
            print(f'{self.member_name} has borrowed the following movies:')
            for movie in self.borrowed_movies:
                print(f'- {movie}')
        else:
            print(f'{self.member_name} has not borrowed any movies.')

# Example usage:

# Initialize available movies in the library
MovieLibrary.available_movies = ['Inception', 'The Matrix', 'Interstellar', 'The Dark Knight']

# Create member instances
member1 = MovieLibrary('Alice')
member2 = MovieLibrary('Bob')

# Borrow movies
member1.borrow_movie('Inception')
member2.borrow_movie('The Matrix')

# View borrowed movies
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# Return movies
member1.return_movie('Inception')
member2.return_movie('The Matrix')

# View borrowed movies after return
member1.view_borrowed_movies()
member2.view_borrowed_movies()

# View available movies in the library after returns
print("\nAvailable movies in the library:")
print(MovieLibrary.available_movies)

#output
Alice borrowed "Inception".
Bob borrowed "The Matrix".
Alice has borrowed the following movies:
- Inception
Bob has borrowed the following movies:
- The Matrix
Alice returned "Inception".
Bob returned "The Matrix".
Alice has not borrowed any movies.
Bob has not borrowed any movies.

Available movies in the library:
['Interstellar', 'The Dark Knight', 'Inception', 'The Matrix']





