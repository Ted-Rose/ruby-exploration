class Car
  def initialize(producer)
    @color = "red"
    @wheels = 4
    @producer = producer || 'Audi'
  end

  def producer
    @producer
  end

  def color
    @color
  end

  def german?
    @producer  == 'Audi'
  end
end

car = Car.new(producer = 'Toyota')
pp car.producer

if !car.german? && car.producer == 'Toyota'
  pp "Car is produced by a Japanese company"
end

puts "Car is #{car.color}" if car.color == 'red'
