require_relative 'app'

def main
  puts "Welcome to the Library Management System!"

  loop do
    puts "\nPlease choose an option:"
    puts "1. List all books"
    puts "2. List all people"
    puts "3. Create a person"
    puts "4. Create a book"
    puts "5. Create a rental"
    puts "6. List rentals for a person"
    puts "7. Quit"

    choice = gets.chomp.to_i

    case choice
    when 1
      list_all_books
    when 2
      list_all_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      list_rentals_for_person
    when 7
      puts "Goodbye!"
      break
    else
      puts "Invalid choice. Please choose a valid option."
    end
  end
end

# Invoke the main method when the file is executed
main if $PROGRAM_NAME == __FILE__
