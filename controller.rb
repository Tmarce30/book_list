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
    book = Book.new
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
