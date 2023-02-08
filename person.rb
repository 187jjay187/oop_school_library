class Person
  attr_reader :id, :name, :age
  attr_writer :name, :age

  @@counter = 0

  def initialize(name: "Unknown", age:, parent_permission: true)
    @id = @@counter += 1
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def is_of_age?
    @age >= 18
  end

  public

  def can_use_services?
    is_of_age? || @parent_permission
  end
end
