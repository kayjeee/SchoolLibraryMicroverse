require_relative 'nameable_class'

class Person < Nameable
  attr_accessor :name, :age

  def initialize(id, name, age)
    super()
    @id = id
    @name = name
    @age = age
  end

  def correct_name
    @name
  end
end
