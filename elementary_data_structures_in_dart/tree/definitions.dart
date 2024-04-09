/* Tree
-------
- The tree is a data structure of profound importance. It’s used to tackle many recurring challenges in software development, such as:
    • Representing hierarchical relationships.
    • Managing sorted data.
    • Facilitating fast lookup operations.
- trees are made up of nodes,Each node can carry some data and keeps track of its children.
- Trees are viewed starting from the top and branching towards the bottom, just like a real tree.
- Every node except for the topmost one is connected to exactly one node above it.
  That node is called a parent node. The nodes connected directly below a parent are
  called child nodes. In a tree, every child has exactly one parent.
- Root :- The topmost node in the tree is called the root of the tree. It is the only node that has no parent.
- Leaf :- A nodee is a Leaf if has no children.
*/

/* Traversal Algorithms (Iterating through trees)(خوارزميات الاجتياز)
---------------------------------------------------------------------
- Iterating through linear collections such as lists or linked lists is straightforward.
- traversal algorithms are used to visit all the nodes in a tree or graph in a specific order. There are several traversal algorithms,
  each with its own characteristics and use cases. The most common traversal algorithms are Depth-First Search (DFS) and Breadth-First Search (BFS).

1- depth-first traversal (DFS):- 
   - a technique that starts at the root and visits nodes as deep as it can before backtracking.
2- level-order traversal :-
   - A level-order traversal means that you visit all of the nodes at an upper level before visiting any of the nodes at the next level down.
   - A tree can be divided into levels based on the distance of the nodes from the root.
     The root itself is level 0, nodes that are direct children of the root are level 1, the
     children of these children are level 2, and on it goes.
   - Level-order traversal is a fundamental algorithm used to traverse and visit all the nodes in a binary tree.
   - In level-order traversal, nodes are visited level by level, starting from the root and moving down to the deepest level,
     visiting nodes from left to right within each level.
   - This traversal is also known as breadth-first traversal.

*/