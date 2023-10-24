# Given the head of a linked list and an integer val, remove all the nodes of the linked list that has Node.val == val, and return the new head.

# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} head
# @param {Integer} val
# @return {ListNode}
def remove_elements(head, val)
    current_node = head
    previous_node = nil

    while current_node != nil 
        if current_node.val == val
            if current_node == head
                current_node = head = head.next
                next
            else
                previous_node.next = current_node.next
                current_node = current_node.next
                next
            end
        end
        
        previous_node = current_node
        current_node = current_node.next
    end

    head
end

# def array_to_list(array)
#     head = nil
#     node = nil
#     array.each do |item|
#         if head == nil
#             head = ListNode.new(item)
#             node = head
#         else
#             node.next = ListNode.new(item)
#             node = node.next
#         end
#     end

#     head
# end

# head = remove_elements(array_to_list([1, 2, 2, 1]), 2)

# puts head
