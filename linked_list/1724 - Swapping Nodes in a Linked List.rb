# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} k
# @return {ListNode}
def swap_nodes(head, k)
    list = []
    node = head
    size = 0
    while node != nil
        list.append(node.val)
        node = node.next
        size += 1
    end

    front = list[k - 1]
    tail  = list[-k]

    node = head
    pos = 1
    while node != nil
        if pos == k
            node.val = tail
        end

        if pos == (size - k + 1)
            node.val = front
        end
        pos += 1
        node = node.next
    end

    head
end