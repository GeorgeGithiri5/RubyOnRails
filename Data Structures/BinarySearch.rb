class Node
    attr_reader :value
    attr_accessor :left, :right

    def initialize(value)
        @value = value
        @left = nil
        @right = nil 

    end
end

# Recursive Function
def pushNode(node, value)
    if(value > node.value)
        if(node.right)
            pushNode(node.right, value)
        else
            node.right = Node.new(value)
        end
    else
        if(node.left)

        pushNode(node.left, value)

        else
            node.left = Node.new(value)
        end
    end
end

arr = [5, 6, 2, 4, 1, 8, 7, 9, 3];
root = Node.new(arr.shift);
arr.each{|e| pushNode(root, e)}

def traverse(node)
    if (node == nil)
        return
    end
    if (node.left)
        traverse(node.left)
    end
    puts node.value
    if(node.right)
        traverse(node.right)
    end
end
traverse(root)

def traverse_right(node)
    if(node==nil)
        return
    end
    if(node.right)
        traverse_right(node.right)
    end
    puts node.value
    if(node.left)
        traverse_right(node.left)
    end
end
traverse_right(root)