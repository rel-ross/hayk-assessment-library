class Book
  attr_reader :title, :genre
  @@all = []
    def initialize title, genre
        @title = title
        @genre = genre
        @@all << self
    end

    def add_author author
        BookAuthor.new(self, author)
    end

    def authors
        this_books_bookauthors = BookAuthor.all.select do |book_author|
            book_author.book == self
        end
        this_books_authors = this_books_bookauthors.map do |book_author|
            book_author.author
        end
        this_books_authors
    end
end