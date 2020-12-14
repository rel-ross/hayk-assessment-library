require 'pry'

require_relative './Author.rb'
require_relative './Book.rb'
require_relative './BookAuthor.rb'

the_goldfinch = Book.new("the goldfinch", "fiction")
harry_potter_1 = Book.new("Harry Potter and the Sorcerers Stone", "fantasy")
harry_potter_2 = Book.new("Harry Potter and the Chamber of Secrets", "fantasy")
good_omens = Book.new("Good Omens", "fantasy")
jk_rowling = Author.new("JK Rowling")
donna_tartt = Author.new("Donna Tartt")
terry_pratchett = Author.new("Terry Pratchett")
neil_gaiman = Author.new("Neil Gaiman")

jk_rowling.add_book harry_potter_1
jk_rowling.add_book harry_potter_2

the_goldfinch.add_author donna_tartt

good_omens.add_author terry_pratchett
good_omens.add_author neil_gaiman


binding.pry
0