# Given the head of a singly linked list, return the middle node of the linked list.

# If there are two middle nodes, return the second middle node.

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
def middle_node(head)
    size = 0
    node = head
    while node != nil
        size += 1
        node = node.next
    end

    middle = size / 2
    current_position = 0

    while head != nil
        if current_position == middle
            return head
        end
        current_position += 1
        head = head.next
    end
end