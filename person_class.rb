class Person < Nameable
  attr_accessor :name
  attr_reader :age

  def initialize(id, name, age)
    @id = id
    @name = name
    @age = age
  end

  def correct_name
    @name
  end
end
