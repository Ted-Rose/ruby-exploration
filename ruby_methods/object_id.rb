class Foo
  def initialize
    @bar = "bar"
  end

  def get_bar
    @bar
  end

  def baz
    puts "bar.object_id: #{get_bar.object_id}"
  end
end

class Fuz < Foo
  def bar
    buz = "buz"
    puts "buz.object_id: #{buz.object_id}"
    foo = Foo.new
    foo.instance_variable_set(:@get_bar, buz)
    pp foo.get_bar
    foo.baz
  end
end

fuz = Fuz.new
fuz.bar

################################################################################

class ActiveRecord
  # Handles interaction with the database tables / models
  @instances = 0

  class << self
    attr_accessor :instances
  end

  def initialize
    @object_number = ActiveRecord.instances
    puts "active_record_object_number: #{@object_number}"
    ActiveRecord.instances += 1
  end
end

class Processor
  def get_active_record
    active_record = ActiveRecord.new
    puts "active_record.object_id in get_active_record: #{active_record.object_id}"
    active_record
  end

  def process!
    active_record = get_active_record
    puts "active_record.object_id in process: #{active_record.object_id}"
    active_record
  end
end

class Rspec
  def run
    active_record = ActiveRecord.new
    puts "active_record.object_id in Rspec: #{active_record.object_id}"
    processor.instance_variable_set(:@get_active_record, active_record)
    process
  end

  def processor
    Processor.new
  end

  def process
    processor.process!
  end

end

# rspec = Rspec.new
# rspec.run
