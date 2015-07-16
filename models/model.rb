class Eightball
#   attr_accessor :array
  
#   def initialize(*array)
#     array.each do |x|
#       @array.push(x)
#     end
#   end
  
  def initialize
    @array = []
  end
  
 
  def add(element)
    @array.push(element)
  end 
 
#   def print()
#     @array.each do |element|
#       puts "Your element is:"    
#     end
#   end
  
  
  def rselect
    len = @array.length
    index = rand(len-1)
    return @array[index]
  end

end
