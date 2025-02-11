# Wrote when following https://www.ruby-lang.org/en/documentation/faq/8/
class Animal
  include Comparable

  attr_reader :legs

  def initialize(name, legs)
    @name, @legs = name, legs
  end

  def <=>(other)
    puts "Comparing #{self} with #{other}"
    legs <=> other.legs
  end

  def inspect
    @name
  end
end

c = Animal.new("cat", 4)
s = Animal.new("snake", 0)
p = Animal.new("parrot", 2)
r = Animal.new("raven", 2)

puts "c < s: #{c < s}"    # => false
puts "s < c: #{s < c}"    # => true
puts "p < r: #{p < r}"    # => false
puts "p > r: #{p > r}"    # => false
puts "p == r: #{p == r}"  # => true
puts "p >= s: #{p >= s}"  # => true
puts p.between?(s, c)  # => true
puts [p, s, c].sort    # => [snake, parrot, cat]
