# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
class Solution

=begin
    :type head: ListNode
=end
    def initialize(head)
        @list_length = self.get_list_length(head)
        @head = head
    end

    def get_list_length(head)
        node = head
        size = 0
        while node != nil
            size += 1
            node = node.next
        end

        size
    end


=begin
    :rtype: Integer
=end
    def get_random()
        random_node_index = (rand() * @list_length).to_i
        node = @head
        count = 0
        while node != nil
            if count == random_node_index
                return node.val
            end
            count += 1
            node = node.next
        end
    end


end

# Your Solution object will be instantiated and called as such:
# obj = Solution.new(head)
# param_1 = obj.get_random()