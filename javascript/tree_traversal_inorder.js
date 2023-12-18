class Node {
  constructor(value, left = null, right = null) {
    this.value = value;
    this.left = left;
    this.right = right;
  }
}

function treeTraversalInorder(root) {
  if (root === null) {
    return;
  }

  treeTraversalInorder(root.left); // Traverse left subtree
  console.log(root.value); // Visit root
  treeTraversalInorder(root.right); // Traverse right subtree
}

if (require.main === module) {
  // add your own tests in here

  let root = new Node(5);
  console.log("Expecting: [5]");
  treeTraversalInorder(root);
  console.log("");

  root = new Node(10, new Node(5), new Node(15));
  console.log("Expecting: [5, 10, 15]");
  treeTraversalInorder(root);
  console.log("");

  root = new Node(50, new Node(30, new Node(20), new Node(40)), new Node(70, new Node(60), new Node(80)));
  console.log("Expecting: [20, 30, 40, 50, 60, 70, 80]");
  treeTraversalInorder(root);
  console.log("");
}

module.exports = {
  Node,
  treeTraversalInorder
};

  /*Pseudocode;

/*function treeTraversalInorder(root):
if root is null:
return

//treeTraversalInorder(root.left) // Traverse left subtree//print root.value // Visit root
//treeTraversalInorder(root.right) // Traverse right subtree


Explanation:
// The Node class represents a node in the binary tree, with a value and left and right child nodes.//The treeTraversalInorder function performs the inorder traversal of the binary tree recursively.
// In the treeTraversalInorder function, we first check if the root is null. If it is, we return from the function.
// Then, we recursively call treeTraversalInorder on the left subtree, visit the root node by printing its value, and finally, recursively call treeTraversalInorder on the right subtree.
// The test cases provided create two different binary trees and call the treeTraversalInorder function on them to verify the correctness of the implementation.
// The expected output is [-10, 2, 20] for the first tree and [0, 5, 10, 20, 30] for the second tree.
*/