class Author
   attr_reader :name
   @@all = []
    def initialize name
        @name = name
        @@all << self
    end

    def add_book book
        BookAuthor.new(book, self)
    end

    def books
        this_authors_bookauthors = BookAuthor.all.select do |book_author|
            book_author.author == self
        end
        this_authors_books = this_authors_bookauthors.map do |book_author|
            book_author.book
        end
        this_authors_books
    end

end