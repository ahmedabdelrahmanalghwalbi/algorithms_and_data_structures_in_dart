/* Binary Tree :-
----------------------
- A binary tree is a tree where each node has at most two children, often
  referred to as the left and right children
*/

/* Traversal Algorithms O(n):-
-----------------------------
- three traversal algorithms for
binary trees: in-order, pre-order and post-order traversals

1- In-Order Traversal :-
-----------------------
  An in-order traversal visits the nodes of a binary tree in the following order, starting
  from the root node:
  1. If the current node has a left child, recursively visit this child first.
  2. Then visit the node itself.
  3. If the current node has a right child, recursively visit this child.

2- Pre-Order Traversal :-
-----------------------
  Pre-order traversal always visits the current node first, then recursively visits the left
  and right child.

3- Post-Order Traversal :-
------------------------
  Post-order traversal only visits the current node after the left and right child have
  been visited recursively.
*/

/* Comparison (In-Order Traversal || Pre-Order Traversal || Post-Order Traversal) :-
------------------------------------------------------------------------------------
a moment to review the differences between those three traversal algorithms:
  void traverseInOrder(void Function(T value) action) {
    leftChild?.traverseInOrder(action);
    action(value);
    rightChild?.traverseInOrder(action);
  }
  void traversePreOrder(void Function(T value) action) {
    action(value);
    leftChild?.traversePreOrder(action);
    rightChild?.traversePreOrder(action);
  }
  void traversePostOrder(void Function(T value) action) {
    leftChild?.traversePostOrder(action);
    rightChild?.traversePostOrder(action);
    action(value);
  }

The methods all contained the same lines of code but executed them in varying order. The list below summarizes that order:
  • traverseInOrder: left → action → right
  • traversePreOrder: action → left → right
  • traversePostOrder: left → right → action
The difference is only in where the action takes place.
Each one of these traversal algorithms has a time and space complexity of O(n).
*/