# Class Variables
class Entity
  # Class variable
  @@instances = 0

  def initialize
    @@instances += 1
    # Instance variable
    @number = @@instances
  end

  def who_am_i
    "I'm #{@number} of #{@@instances}"
  end

  def self.total
    @@instances
  end
end

entities = Array.new(9) { Entity.new }
puts ''
puts 'Class variables implementation'
puts '-' * 50
puts entities[6].who_am_i # => "I'm 7 of 9"
puts Entity.total # => 9


# Class Instance Variables
class SecondEntity
  # Class instance variable
  @instances = 0

  class << self
    # Accessor to class instance variable
    attr_accessor :instances # provide class methods for reading/writing
  end

  def initialize
    self.class.instances += 1
    # Instance variable
    @number = self.class.instances
  end

  def who_am_i
    "I'm #{@number} of #{self.class.instances}"
  end

  def self.total
    @instances
  end
end

second_entities = Array.new(9) { SecondEntity.new }
puts ''
puts 'Class instance variables implementation'
puts '-' * 50
puts second_entities[6].who_am_i  # => "I'm 7 of 9"
puts SecondEntity.instances      # => 9
puts SecondEntity.total          # => 9
