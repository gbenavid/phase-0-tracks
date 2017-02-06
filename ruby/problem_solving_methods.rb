def search_array(array, value)
  index = []
  array.each do |number|  
    if number == value 
      return index.length
    elsif number != value && array.count(value) == 0
      return nil
    end
    index << 1
  end
end
# DRIVER CODE
arr = [42, 89, 23, 1]
# p search_array(arr, 42)
# p search_array(arr, 24)
def fib (number)
	fib_arr = [0, 1]
	(number -2).times do	
	fib_arr << fib_arr[-1].to_i + fib_arr[-2].to_i
	end
	return fib_arr
end
# Release 2
# Input => [1, 3, 4, 12, 5, 2]
def bubble_sort(array)
  arr_length = array.length
  loop do
    swapped = false
# Compare each number to the next number
# and if that number is larger than the former, print the larger into the new var called sorted
    (arr_length-1).times do |i|
    	# Do this x amount of .times and then subtract 1 each time
      if array[i] > array[i+1] # if the array index is greater than the next index then...
        array[i], array[i+1] = array[i+1], array[i] # swap the order of the array's index
        swapped = true
      end
    end

    break if not swapped # break once everything is in order.
  end
  array # return an array
end
# Output => [1, 2, 3, 4, 5, 12]



