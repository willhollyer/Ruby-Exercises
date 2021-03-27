require 'pry'

my_array = [78,0,2,4,3,2]

def bubble_sort(array) 
  array_length = array.size
  return array if array_length <= 1
  
  
  loop do
    swapped = false
   
    (array_length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end

  array
end

p bubble_sort(my_array)