# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} left
# @param {Integer} right
# @return {ListNode}
def reverse_between(head, left, right)
    return head if left == right

    value_stack = []

    node = head
    position = 1
    while node != nil
        if position >= left && position <= right
            value_stack.append(node.val)
        end

        break if position > right

        position += 1
        node = node.next
    end

    node = head
    position = 1
    while node != nil
        if position >= left && position <= right
            node.val = value_stack.pop()
        end

        break if position > right

        node = node.next
        position += 1
    end

    head
end