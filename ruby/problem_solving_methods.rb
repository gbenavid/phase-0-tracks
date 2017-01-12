# Array: Take a number and return it's index and return nil if it's non existant in the array
arr = [42, 89, 23, 2]
# array_length = array.length
def search_arr (arr, integer)		
	new_arr = [] 
	arr.each do |number|
		new_arr << number
		if (number == integer)
			p new_arr.length - 1
			# p arr.length # PRINT THE INDEX
		end
	end
	# If the parameter is equal to any of the indecies 
	# return the number.
end
p arr
p search_arr(arr, 2)
# Input => One number
# def fib (number)
	# Take the number and generate an array that is the length of the number.

# end
# Output => an array of numbers

















