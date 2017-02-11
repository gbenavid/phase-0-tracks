class TodoList
  attr_accessor :array 
  def initialize (array)
    @array = array	
  end
  def get_items
    @array
  end
  def add_item(additional_chore)
    @array.push(additional_chore)
  end
  def delete_item (finished_chore)
    @array.delete(finished_chore)
  end
  def get_item(i)
    @array.at(i)
  end
end
