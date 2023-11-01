# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

def get_last_node(head)
  last_node = head
  while last_node.next != nil
    last_node = last_node.next
  end

  last_node
end

# @param {ListNode} list1
# @param {Integer} a
# @param {Integer} b
# @param {ListNode} list2
# @return {ListNode}
def merge_in_between(list1, a, b, list2)
  list2_last_node = get_last_node(list2)
  previous_node = nil
  current_node = list1
  found_a = false
  found_b = false
  count = 0

  previous_a_node = nil
  successor_b_node = nil
  while !found_a || !found_b
    if count == a
      previous_a_node = previous_node
      found_a = true
    end

    if count == b
      successor_b_node = current_node.next
      found_b = true
    end

    previous_node = current_node
    current_node = current_node.next
    count += 1
  end

  previous_a_node.next = list2
  list2_last_node.next = successor_b_node
  
  list1
end

# def array_to_list(array)
#     head = ListNode.new(array[0])
#     list = head
#     (1..(array.length - 1)).each do |pos|
#         list.next = ListNode.new(array[pos])
#         list = list.next
#     end

#     head
# end
