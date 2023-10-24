# Given head, the head of a linked list, determine if the linked list has a cycle in it.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# solving using Floyd's Cycle-Finding Algorithm

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    slow_pointer = head
    fast_pointer = head

    while true
        return false if slow_pointer == nil || fast_pointer == nil

        slow_pointer = slow_pointer.next
        2.times do 
            fast_pointer = fast_pointer.next
            return false if fast_pointer == nil
        end

        return true if slow_pointer == fast_pointer
    end
end