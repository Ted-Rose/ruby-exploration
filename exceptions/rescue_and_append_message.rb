class CustomException < Exception
  def initialize(first_message, second_message)
    puts "Messages in initialize: \n#{first_message} #{second_message}"
    # First output:
    # Hello World!

    @received_first_message = first_message
    @received_second_message = second_message
    super(_message)
  end

  attr_reader :received_first_message, :received_second_message

  private

  def _message
    "CustomException's received message: "\
    "'#{received_first_message} #{received_second_message}'."
  end
end

first_message = "Hello "
second_message = "World!"

begin
  raise CustomException.new(first_message, second_message)

rescue CustomException => e
  puts "e.message: \n#{e.message}"
  # Output:
  # CustomException's received message: 'Hello World'!

  message = "#{e.message} Appended message."
  raise CustomException.new(first_message, second_message), message
  # Output:
  # CustomException's received message: ''CustomException's received message:
  # 'Hello World! Appended message. (CustomException)
end
