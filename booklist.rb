require 'book'
require 'csv'

class Booklist
  def initialize(csv_file_path)
    @booklist = []
    @csv_file = csv_file_path
    CSV.foreach { |row| @cookbook << Book.new(row[0], row[1]) }
  end

  def all
    @booklist
  end

  def add_recipe(recipe)
    @booklist << recipe
    CSV.open(@csv_file, 'wb') do |csv|
      @booklist.each do |item|
        csv << [item.title, item.author]
      end
    end
  end

  def destroy(recipe)

  end
end
