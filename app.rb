require_relative 'booklist'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

csv_file   = File.join(__dir__, 'books.csv')
booklist   = Booklist.new(csv_file)
controller = Controller.new(booklist)

router = Router.new(controller)

# Start the app
router.run
