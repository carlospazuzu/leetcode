# commented code are tests I was doing before
# come up with the solution
# the solution is the not commented methods

=begin
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
=end

def insert_into_final_list(final_list, value)
    if final_list == nil
        final_list = ListNode.new(value)
    else
        node = final_list
        while node.next != nil
            node = node.next
        end
        node.next = ListNode.new(value)
    end

    final_list
end

def merge_two_lists(list1, list2)
    final_list = nil

    # while no list have been throught entirely
    while list1 != nil && list2 != nil
        if list1.val < list2.val
            final_list = insert_into_final_list(final_list, list1.val)
            list1 = list1.next
        else
            final_list = insert_into_final_list(final_list, list2.val)
            list2 = list2.next
        end
    end

    if list1 == nil
        while list2 != nil
            final_list = insert_into_final_list(final_list, list2.val)
            list2 = list2.next
        end
    end

    if list2 == nil
        while list1 != nil
            final_list = insert_into_final_list(final_list, list1.val)
            list1 = list1.next
        end
    end

    final_list
end

=begin
def print_list(list)
    while list != nil
        print "#{list.val} "
        list = list.next
    end
end

def array_to_list(array)
    head = ListNode.new(array[0])
    list = head
    (1..(array.length - 1)).each do |pos|
        list.next = ListNode.new(array[pos])
        list = list.next
    end

    head
end

list1 = array_to_list([1, 2, 4])
list2 = array_to_list([1, 3, 4])

print_list(merge_two_lists(list1, list2))
=end