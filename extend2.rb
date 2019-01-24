# practice class
module ReusableModule
	class P
    def display
      puts 'hello from module'
    end
  end
end

# practice class
class ExtendClass
  extend ReusableModule
  def self.something
    puts 'hello'
    ReusableModule::P.new.display
  end
end
# obj = IncludeClass.new
# obj.something
ExtendClass.something
