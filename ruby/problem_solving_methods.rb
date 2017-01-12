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
















