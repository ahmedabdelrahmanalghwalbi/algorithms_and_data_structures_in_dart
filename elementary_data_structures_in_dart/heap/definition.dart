/* Heap :-
--------
- A heap is a complete binary tree, also known as a binary heap, that can be constructed using a list.
  
- Heaps come in two flavors:
  --------------------------
  1. Max-heap, in which elements with a higher value have a higher priority.
  2. Min-heap, in which elements with a lower value have a higher priority.
    • In a max-heap, parent nodes must always contain a value that is greater than or
      equal to the value in its children. The root node will always contain the highest
      value.
    • In a min-heap, parent nodes must always contain a value that is less than or equal
      to the value in its children. The root node will always contain the lowest value.

- Accessing Nodes :-
-------------------
  It’s now easy to access any node in the heap. Instead of traversing down the left or
  right branch, you access a node in your list using simple formulas.
  
  Given a node at a zero-based index i:
  ------------------------------------
    • The left child of this node is at index 2i + 1.
    • The right child of this node is at index 2i + 2.
    • The parent of this node is at index (i - 1) ~/ 2.  
  
  Accessing a particular node in an actual binary tree requires traversing the tree from
  the root, which is an O(log n) operation. That same operation is just O(1) in a
  random-access data structure such as a list.
*/

/* Note :-
--------
Note: Don’t confuse these heaps with memory heaps. The term heap is
sometimes confusingly used in computer science to refer to a pool of memory.
Memory heaps are a different concept and not what you’re studying here.

*/