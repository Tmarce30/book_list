class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "* WELCOME TO YOUR BOOKLIST *"
    puts "---------------------------"
    while @running
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

private

  def print_actions
    puts "What do you want to do ?"
    puts ""
    puts "1 - Display my books"
    puts "2 - Add a book to the list"
    puts "3 - Remove a book from the list"
    puts "4 - Mark a book as read"
    puts "5 - Exit"
    puts "----------------------------"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then @controller.mark_as_read
    when 5 then @running = false
    else
      puts "Please type 1, 2, 3 or 4 :)"
    end
  end
end
