class Student < Person
  def initialize(name: "Unknown", age:, parent_permission: true, classroom:)
    super(name: name, age: age, parent_permission: parent_permission)
    @classroom = classroom
  end

  attr_reader :classroom

  def play_hooky
    "¯\\(ツ)/¯"
  end
end
