# frozen_string_literal: true

# Base data than all the people share
class Person
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age:, parent_permission: true, name: 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    return true if is_of_age? || @parent_permission

    false
  end

  private

  def of_age?
    age >= 18
  end
end
