class Teacher < Person
  def initialize(name: "Unknown", age:, parent_permission: true, specialization:)
    super(name: name, age: age, parent_permission: parent_permission)
    @specialization = specialization
  end

  attr_reader :specialization

  def can_use_services?
    true
  end
end
