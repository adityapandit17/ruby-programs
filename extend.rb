# practice class
module ReusableModule
  class P
    def display
      puts 'hello from module'
    end
  end
end
# practice class
class IncludeClass
  include ReusableModule
  def something
    P.new.display
  end
end
obj = IncludeClass.new
obj.something
# ExtendClass.display
