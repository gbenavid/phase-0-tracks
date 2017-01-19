class TodoList (array)
	attr_accessor :array #Accounts for reading && writing o/side of the method(s)w/in your class
	def get_items (array)
		puts array
	end
	def add_item
		# ["do the dishes", "mow the lawn", "mop"]
	end
	def delete_item
		# list.delete_item("do the dishes")
    	# expect(list.get_items).to eq ["mow the lawn"]
	end
	def get_item(index_number)
		return array.index(index_number)
	end
end