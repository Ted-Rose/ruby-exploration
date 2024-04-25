class Greeter
    def initialize(name = "World")
        @name = name
      end
    def say_hi
        puts "Hi #{@name}!"
      end
    def say_bye
        puts "Bye #{@name}, come back soon."
      end
end

greeter = Greeter.new("Pat")
greeter.say_hi
greeter.say_bye
# puts(Greeter.instance_methods)
# Prints all instance methods excluding predefined
puts(Greeter.instance_methods(false))
puts("greeter.respond_to?(say_bye)?\n", greeter.respond_to?("say_bye"))
puts("greeter.respond_to?(name)?\n", greeter.respond_to?("name"))
puts("greeter.respond_to?(name=)?\n", greeter.respond_to?("name="))
class Greeter
  attr_accessor :name
end

greeter = Greeter.new("Andy")
puts("greeter.respond_to?(name)?\n", greeter.respond_to?("name"))
puts("greeter.respond_to?(name=)?\n", greeter.respond_to?("name="))
greeter.say_hi
greeter.name="Betty"
greeter.name
greeter.say_hi