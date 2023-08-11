# Import required classes
require_relative 'person_class'
require_relative 'book_class'
require_relative 'rental_class'

# Method to list all books
def list_books(books)
  puts "List of Books:"
  books.each_with_index do |book, index|
    puts "#{index + 1}. Title: #{book.title}, Author: #{book.author}"
  end
end

# Method to list all people
def list_people(people)
  puts "List of People:"
  people.each_with_index do |person, index|
    puts "#{index + 1}. Name: #{person.name}, Age: #{person.age}"
  end
end

# Method to create a person (teacher or student)
def create_person(people)
  puts "Enter person details:"
  print "Name: "
  name = gets.chomp
  print "Age: "
  age = gets.chomp.to_i

  person = Person.new(people.length + 1, name, age)
  people << person
  puts "Person #{name} created!"
end

# Method to create a book
def create_book(books)
  puts "Enter book details:"
  print "Title: "
  title = gets.chomp
  print "Author: "
  author = gets.chomp

  book = Book.new(title, author)
  books << book
  puts "Book #{title} created!"
end

# Method to create a rental
def create_rental(people, books, rentals)
  list_people(people)
  print "Enter person's index: "
  person_index = gets.chomp.to_i - 1
  person = people[person_index]

  list_books(books)
  print "Enter book's index: "
  book_index = gets.chomp.to_i - 1
  book = books[book_index]

  print "Enter rental date (YYYY-MM-DD): "
  date = gets.chomp

  rental = Rental.new(date, book, person)
  rentals << rental
  puts "Rental created!"
end

# Method to list all rentals for a given person ID
def list_rentals_for_person(person_id, rentals)
  puts "Rentals for Person ID #{person_id}:"
  rentals.each do |rental|
    if rental.person.id == person_id
      puts "Date: #{rental.date}, Book: #{rental.book.title}"
    end
  end
end

# Main entry point
def main
  people = []
  books = []
  rentals = []

  loop do
    puts "Options:"
    puts "1. List Books"
    puts "2. List People"
    puts "3. Create Person"
    puts "4. Create Book"
    puts "5. Create Rental"
    puts "6. List Rentals for Person"
    puts "0. Quit"

    choice = gets.chomp.to_i

    case choice
    when 1
      list_books(books)
    when 2
      list_people(people)
    when 3
      create_person(people)
    when 4
      create_book(books)
    when 5
      create_rental(people, books, rentals)
    when 6
      print "Enter person's ID: "
      person_id = gets.chomp.to_i
      list_rentals_for_person(person_id, rentals)
    when 0
      puts "Goodbye world!"
      break
    else
      puts "Invalid option. Please try again."
    end
  end
end

# Call the main method
main if __FILE__ == $PROGRAM_NAME
