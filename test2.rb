# example class
class Example
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
a = []
a << Example.new("aditya")

# puts a.class

a << Example.new("amritansh")
a.each do |i|
  puts i.name
end
