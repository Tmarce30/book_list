require_relative 'booklist'

class View
  def display(booklist)
    booklist.each_with_index do |book, index|
      read = book.has_been_read? ? "[X]" : "[ ]"
      puts "#{index + 1} - #{book.title} | #{book.author} | read: #{read}"
    end
  end
end
