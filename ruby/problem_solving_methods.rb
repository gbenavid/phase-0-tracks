# Array: Take a number and return it's index and return nil if it's non existant in the array
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
# Input => One number
def fib (number)
	# Take the number and generate an array that is the length of the number.

end
# Output => an array of numbers

















