# Given the head of a singly linked list, return true if it is a palindrome or false otherwise.

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    array = []
    size = 0
    while head != nil
        array.append(head.val)
        size += 1
        head = head.next
    end

    front_pointer = 0
    back_pointer  = size - 1

    while front_pointer <= back_pointer
        return false if array[front_pointer] != array[back_pointer]
        front_pointer += 1
        back_pointer  -= 1
    end
    
    true
end