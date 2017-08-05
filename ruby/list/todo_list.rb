class TodoList
attr_reader :get_items

    def initialize(items)
        @get_items = items 
    end

    def add_item(items)
        @get_items << items 
    end

    def delete_item(items)
        @get_items.delete(items)
    end

    def get_item(index)
        @get_items[index]
    end

end