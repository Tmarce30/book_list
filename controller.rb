require_relative 'booklist'
require_relative 'book'
require_relative 'view'

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
  end

  def mark_as_read
  end

  private

  def display_books
    booklist = @booklist.all
    @view.display(booklist)
  end
end
