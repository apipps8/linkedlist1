class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

def print_values(list_node)
    if list_node
        print "#{list_node.value} --> "
        print_values(list_node.next_node)
    else 
        print "nil\n"
        return
    end 
end

class Stack
    attr_reader :data
    
    def initialize
        @data = nil
    end

    
    def push(value)
    
             @data = LinkedListNode.new(value, @data)
    
    end

    def pop
        out = @data.value
        @data = LinkedListNode.new(@data.next_node.value, @data.next_node.next_node)
        puts out
    end

   

end

def reverse_list(list)
    new_list = Stack.new

    while list
        current_value = list.pop
        puts current_value
        new_list.push(current_value)
        
    end

    return new_list
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------"


stack = Stack.new
stack.push(2)
stack.push(4)
stack.push(6)
stack.push(8)
stack.push(10)
stack.push(12)
stack.push(14)
stack.pop

reverse_list = reverse_list(stack)
print_values(stack)