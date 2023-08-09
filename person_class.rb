class Person < Nameable
  attr_accessor :name, :age

  def initialize(id, name, age)
    super() # Call super to initialize the parent class (Nameable)
    @id = id
    @name = name
    @age = age
  end

  def correct_name
    @name
  end
end
