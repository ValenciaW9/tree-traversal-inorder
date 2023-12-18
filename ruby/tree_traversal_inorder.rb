class Node
  attr_accessor :value, :left, :right

  def initialize(value, left = nil, right = nil)
    @value = value
    @left = left
    @right = right
  end
end

def tree_traversal_inorder(root)
 retrun if root.nil?

 tree_traversal_inorder(root.left) #{ Traverse left subtree}
 puts root.value #Visit root
 tree_traversal_inorder(root.rigt) #{ Traverse right subtree}
end

if __FILE__ == $PROGRAM_NAME
  root = Node.new(2, Node.new(-10), Node.new(20))
  puts "Expecting: [-10, 2, 20]"
  print tree_traversal_inorder(root)
  puts

  puts

  root = Node.new(10, Node.new(0, nil, Node.new(5)), Node.new(20, nil, Node.new(30)))
  puts "Expecting: [0, 5, 10, 20, 30] "
  print tree_traversal_inorder(root)
  puts

  root = Node.new(30, Node.new(10, nil, Node.new(20, nil, Node.new(25, Node.new(24)))), Node.new(50, Node.new(40, Node.new(39)), Node.new(55, Node.new(54), Node.new(56, nil, Node.new(60)))))
  puts "Expecting: [5, 6, 7, 8, 9, 10] "
  print tree_traversal_inorder(root)
  puts

root = Node.new(2, Node.new(-10), Node.new(20))
puts "Expecting: [-10, 2, 20]"
tree_traversal_inorder(root)
puts ""

root = Node.new(10, Node.new(0, nil, Node.new(5)), Node.new(20, nil, Node.new(30)))
puts "Expecting: [0, 5, 10, 20, 30]"
tree_traversal_inorder(root)
puts ""





  #{}Don't forget to add your own!
end

# Please add your pseudocode to this file : Pseudocode
#{ class Node
#{Attr_accessor : value, : left, :right = nil
#@value = value
#@left = left
#@right = right
  #end
#end

#{def tree_traversal_border(root)
#return if root is nil


#{trrr-traversal_inorder(root.left) // Traverse left subteet
#{print root.value//Visit root
#{tree_traversal_inorder{root.right) //Traverse right subtree}
#{tree_traversal_inorder(root.rigt) // Traverse right subtree}
#end

#{def intialize(value, left = nil, right ,)}
# And a written explanation of your solution
#{#{#{#{}}}}
