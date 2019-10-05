require 'pry'

def my_find(array)
  i = 0 
  while i < array.length 
    return array[i] if yield(array[i])
  i += 1 
  end
end

binding.pry 

my_find((1..100).to_a) { |i| i % 3 == 0 and i % 5 == 0 }