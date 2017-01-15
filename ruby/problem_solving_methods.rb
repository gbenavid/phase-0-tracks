# Array: Take a number and return it's index in relation to the array
arr = [42, 89, 23, 2]
def search_arr (arr, integer)		
	new_arr = [] 
	arr.each do |number|
	new_arr << number
		if (number == integer)
			return new_arr.length - 1
		elsif (new_arr.length == arr.length)
			return nil
		end
	end
end
puts search_arr(arr, 2123)

# Take the number and generate an array that is the length of the number.

# Input => One number
def fib (number)
	fib_arr = [0, 1]
	(number -2).to_i.times do 
	# reccure over this method x times (number = x)
	# -1 + - 2 ==> new number
	fib_arr << fib_arr[-1].to_i + fib_arr[-2].to_i
	end
	return fib_arr
end
# Output => an array of numbers
p fib(1)

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



