# Names: Margaret Kamimoto & Lloyd Clave 

class TodoList
	attr_reader :items
	def initialize(items)
		@items = items
	end
	def get_items
		@items
	end
	def add_item(item)
		@items << item
	end
	def delete_item(del_item)
		@items.delete(del_item)
	end
	def get_item(item_index)
		@items[item_index]
	end

end