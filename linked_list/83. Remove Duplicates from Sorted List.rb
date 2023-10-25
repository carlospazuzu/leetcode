# Given the head of a sorted linked list, delete all duplicates such that each element appears only once. Return the linked list sorted as well.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    current_value = -Float::INFINITY
    current_node = head
    previous_node = nil

    while current_node != nil
        if current_value == -Float::INFINITY
            current_value = current_node.val
            previous_node = current_node
            current_node = current_node.next
            next
        end

        if current_node.val == current_value
            if current_node == head
                head = head.next
                current_node = head
                previous_node = nil
            else
                previous_node.next = current_node.next
                current_node = current_node.next
            end
        else
            current_value = current_node.val
            previous_node = current_node
            current_node = current_node.next
        end
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

# head = delete_duplicates(array_to_list([1, 1, 2, 3, 3]))

# puts head