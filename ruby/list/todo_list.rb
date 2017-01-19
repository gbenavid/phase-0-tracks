class TodoList
	attr_accessor :array 
	def initialize (array)
		@array = array	
		end
	def get_items
		return @array
		end
	def add_item(additional_chore)
		return @array.push(additional_chore)
		end
	def delete_item (finished_chore)
		return @array.delete(finished_chore)
		end
	def get_item(i)
		return @array.at(i)
	end
end