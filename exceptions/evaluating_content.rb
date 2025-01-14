def raise_exception(error_message)
  raise Exception, error_message
end

def break_something(error_message)
  expected_error_message = "known_error"

  begin
    raise_exception(error_message)

  rescue Exception => e
    if e.message == expected_error_message
      puts "Caught expected error message!"
    else
      raise e
    end
  end
end

message = "known_error"
break_something(message)
# Output:
# Caught expected error message!

message = "another_error"
break_something(message)
# Output:
# evaluating_content.rb:2:in `raise_exception': another_error (Exception)
