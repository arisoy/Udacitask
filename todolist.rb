class TodoList
	attr_reader :title, :items
     # Initialize todo list with a title and no items
    def initialize(list_title)
    	@title = list_title
        @items = Array.new # Starts empty! No Items yet!
    end

    # Creates a new Item and adds it to the array of Items
    def add_item(new_item)
        item = Item.new(new_item)
        @items.push(item)
    end

    def remove_item(item)
        @items.delete(item)
    end
end

class Item
     attr_reader :description, :completed_status

     # Initialize item with a description and marked as
     # not complete
     def initialize(item_description)
        @description = item_description
        @completed_status = false
     end
end

