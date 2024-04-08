import '../binary_tree/binary_search_tree.dart';

class BinarySearchTree<E extends Comparable<dynamic>> {
  BinaryNode<E>? root;
  @override
  String toString() => root.toString();

  void insert(E value) {
    root = _insertAt(root, value);
  }

  BinaryNode<E> _insertAt(BinaryNode<E>? node, E value) {
// 1 - This is a recursive method, so it requires a base case for terminating recursion. If the current node is null, you’ve found the insertion point and you return the new BinaryNode.
    if (node == null) {
      return BinaryNode(value);
    }
// 2 - Because element types are comparable, you can perform a comparison. This if
//     statement controls which way the next _insertAt call should traverse. If the
//     new value is less than the current value, that is, if compareTo returns a negative
//     number, you’ll look for an insertion point on the left child. If the new value is
//     greater than or equal to the current value, you’ll turn to the right child.
    if (value.compareTo(node.value) < 0) {
      node.leftChild = _insertAt(node.leftChild, value);
    } else {
      node.rightChild = _insertAt(node.rightChild, value);
    }
// 3 - Return the current node. This makes assignments of the form node =
//   _insertAt(node, value) possible as _insertAt will either create node, if it
//   was null, or return node, if it was not null.
    return node;
  }
}
