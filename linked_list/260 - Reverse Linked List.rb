# Given the head of a singly linked list, reverse the list, and return the reversed list.

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
def reverse_list(head)
    first = true
    reversed = nil
    while head != nil
        if first
           reversed = ListNode.new(head.val)
           first = false
        else
            node = reversed.dup
            reversed = ListNode.new(head.val)
            reversed.next = node
        end
        head = head.next
    end

    reversed
end