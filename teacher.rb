require_relative 'person'

class Teacher < Person
  attr_reader :specialization

  def initialize(specialization, id, age, name = 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission: parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
