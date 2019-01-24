# GoodDog class
class GoodDog
  DOG_YEARS = 7
  attr_accessor :name, :age

  def initialize(nnn, aaa)
    self.name = nnn
    self.age  = aaa * DOG_YEARS 
  end

  def to_s
    return [name, age]
  end
end
sparky = GoodDog.new('Sparky', 4)
puts sparky.age
a = []
a = sparky.to_s # putting object data into array
puts a
# puts a.class
