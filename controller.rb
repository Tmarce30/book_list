require_relative 'booklist'
require_relative 'book'
require_relative 'view'
require 'pry-byebug'

class Controller
  def initialize(booklist)
    @booklist = booklist
    @view = View.new
  end

  def list
    display_books
  end

  def create
    title = @view.ask_user_for_title
    author = @view.ask_user_for_author
    has_been_read = @view.ask_user_if_he_read_it
    book = Book.new(title, author, has_been_read)
    @booklist.add(book)
    list
  end

  def destroy
    list
    book_index = @view.book_to_remove
    @booklist.destroy(book_index)
    list
  end

  def mark_as_read
    list
    book_index = @view.book_to_mark_as_read
    @booklist.has_been_read(book_index)
    list
  end

  private

  def display_books
    booklist = @booklist.all
    @view.display(booklist)
  end
end
