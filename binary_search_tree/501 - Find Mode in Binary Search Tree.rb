# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
def insert(list, key)
    if list.key?(key)
        list[key] += 1
    else
        list[key] = 1
    end
end

def get_nodes_list(root, list)
    return if root == nil

    insert(list, root.val)
    get_nodes_list(root.left, list)
    get_nodes_list(root.right, list)
end

# @param {TreeNode} root
# @return {Integer[]}
def find_mode(root)
    list = {}
    get_nodes_list(root, list)

    node_list = []
    size = 0
    list.each_pair do |pair|
        node_list.append([pair[0], pair[1]])
        size += 1
    end

    node_list = node_list.sort_by { |a| [-a[1], a[0]]}
    result = []
    biggest = -Float::INFINITY
    pos = 0
    loop do
        break if pos >= size

        if node_list[pos][1] >= biggest
            biggest = node_list[pos][1]
            result.append(node_list[pos][0])
        else
            break
        end
        pos += 1
    end

    result
end