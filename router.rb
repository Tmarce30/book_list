class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "WELCOME TO YOUR BOOKLIST"
    puts "------------------------"
    while @running
      print_actions
      action = gets.chomp.to_i
      puts ""
      dispatch(action)
    end
  end

private

  def print_actions
    puts ""
    puts "What do you want to do ?"
    puts ""
    puts "1 - Display my list of books"
    puts "6 - Exit"
    puts "----------------------------"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 6 then @running = false
    else
      puts "Please type 1, 2, 3 or 4 :)"
    end
  end
end
