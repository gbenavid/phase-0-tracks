# First we have to 'link' our TodoList to our RSpec file.
require_relative 'todo_list'

# Within this describe block we're going to create a variable called list and set that equal to an instance with the arguments 'do the dishes', and 'mow the lawn' wrapped in an array
describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }
  
  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]

    # expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
    # list = TodoList.new(["do the dishes", "mow the lawn"]) 
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end








