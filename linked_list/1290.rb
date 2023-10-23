# Convert Binary Number in a Linked List to Integer

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Integer}
def get_decimal_value(head)
    binary_array = []
    while head != nil
        binary_array.append(head.val)
        head = head.next
    end

    value = 0
    position = 0

    binary_array.reverse.each_with_index do |item|
        if item == 0
            position += 1
            next
        end

        value += 2 ** position
        position += 1
    end

    value
end

# node = ListNode.new(1)
# node.next = ListNode.new(0)
# node.next.next = ListNode.new(1)

# get_decimal_value(node)
