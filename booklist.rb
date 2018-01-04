require_relative 'book'
require 'csv'

class Booklist
  def initialize(csv_file_path)
    @booklist = []
    @csv_file = csv_file_path
    CSV.foreach(csv_file_path) { |row| @booklist << Book.new(row[0], row[1]) }
  end

  def all
    @booklist
  end

  def add(book)
    @booklist << book
    update_csv
  end

  def destroy(book_index)
    @cookbook.delete_at(book_index)
    update_csv
  end

  private

  def update_csv
    CSV.open(@csv_file, 'wb') do |csv|
      @booklist.each do |item|
        csv << [item.title, item.author]
      end
    end
  end
end
