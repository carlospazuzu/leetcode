class ListNode
    attr_accessor :data, :next

    def initialize(data = 0, _next = nil)
        @data = data
        @next = _next
    end
end

class LinkedList
    attr_accessor :head
    
    def initialize
        @head = nil
    end

    def insert(value)
        if @head == nil
            @head = ListNode.new(value)
        else
            node = @head
            while node.next != nil
                node = node.next
            end
            node.next = ListNode.new(value)
        end
    end

    def print
        if @head == nil
            puts 'The List is empty.'
        else
            node = @head
            while node != nil
                puts node.data
                node = node.next
            end
        end
    end
end

list = LinkedList.new
list.insert(2)
list.insert(4)
list.insert(9)

list.print