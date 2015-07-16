class Eightball
  attr_accessor :array
  
  def initialize(*array)
    array.each do |x|
      @array.push(x)
    end
  end
 
  def add(element)
    @array.push(element)
  end 
 
  def print()
    @array.each do |element|
      push "Your element is:"    
    end
  end
  
  
  def rselect
    len = @array.length
    index = Random.rand(1, len)
    return @array[index - 1]
  end

end
