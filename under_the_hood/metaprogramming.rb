# Following this blog: https://www.toptal.com/ruby/ruby-metaprogramming-cooler-than-it-sounds
class Developer

  def self.backend
    self
  end

  def frontend
    self
  end

end
developer_instance = Developer.new

p Developer.backend # Developer
p Developer.new.frontend # <Developer:0x0000000104aff488>
p Developer.class # Class
p Class.superclass # Module
p Module.superclass # Object
p Object.superclass # BasicObject