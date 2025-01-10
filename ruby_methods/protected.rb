class Foo
  def bar
    puts "bar"
  end

  protected
  def baz
    puts "baz"
  end

  def qux
    puts "qux"
  end
end

foo = Foo.new
foo.bar
foo.qux # protected method `qux' called for an instance of Foo (NoMethodError)
foo.baz # protected method `baz' called for an instance of Foo (NoMethodError)