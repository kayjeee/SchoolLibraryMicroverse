require_relative 'person'

# Represents a student, inheriting from the Person class.
class Student < Person
  def initialize(id, age, classroom, parent_permission: true, name: 'Unknown')
    super(id, age, parent_permission:, name:)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end
