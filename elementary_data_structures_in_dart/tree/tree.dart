class TreeNode<T> {
  T value;
  List<TreeNode<T>> children = [];
  TreeNode({required this.value});

  //adding new tree nodes to the tree
  void set add(TreeNode<T> newTreeNode) => children.add(newTreeNode);
}
