require_relative 'booklist'

class View
  def display(booklist)
    puts ""
    booklist.each_with_index do |book, index|
      read = book.has_been_read? ? "[X]" : "[ ]"
      puts "#{index + 1} - #{book.title} | #{book.author} | read: #{read}"
    end
     puts "\n---------------------------"
  end

  def ask_user_for_title
    puts "\nWhat is the title of the book ?"
    return gets.chomp
  end

  def ask_user_for_author
    puts "\nWho wrote it ?"
    return gets.chomp
  end

  def ask_user_to_select_book
    puts "\nWhich book do you want to remove ?"
    index = gets.chomp.to_i - 1
    return index
  end

  def ask_user_if_he_read_it
    puts "\nHave you read it ?"
    puts "Y or N"
    answer = gets.chomp.upcase
    if answer == "Y"
      return true
    elsif answer == "N"
      return false
    else
      puts "type Y or N"
    end
  end
end
