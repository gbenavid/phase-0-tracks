# Array: Take a number and return it's index and return nil if it's non existant in the array
arr = [42, 89, 23, 2]
# array_length = array.length
def search_arr (arr, integer)
	arr.each do |number|
		if number == integer
			p true # p arr[i] print the index that this intger is located at
		else 
			p false # otherwise add one to the conter until loop ends
		end
	end
	# If the parameter is equal to any of the indecies 
	# return the number.
end
p arr
p search_arr(arr, 42)
# Input => One number
# def fib (number)
	# Take the number and generate an array that is the length of the number.

# end
# Output => an array of numbers

















