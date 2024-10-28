require 'nokogiri'

class Parser < Nokogiri::XML::SAX::Document
  def start_element(name, attrs = [])
    puts "Start element: #{name}, attributes: #{attrs}"
  end

  def characters(string)
    puts "Characters: #{string}"
  end

  def end_element(name)
    puts "End element: #{name}"
  end
end

puts('-' * 80, 'Parsing example.xml')
file_path = File.join(File.dirname(__FILE__), 'example.xml')
Nokogiri::XML::SAX::Parser.new(Parser.new).parse(File.open(file_path))

puts('-' * 80, 'Parsing books.xml')
file_path = File.join(File.dirname(__FILE__), 'books.xml')
Nokogiri::XML::SAX::Parser.new(Parser.new).parse(File.open(file_path))

puts('-' * 80, 'Parsing transactions.xml')
file_path = File.join(File.dirname(__FILE__), 'transactions.xml')
Nokogiri::XML::SAX::Parser.new(Parser.new).parse(File.open(file_path))
