import 'tree.dart';

abstract class TraversalAlgorithms {
  //depth first search (Traversal algorithms)
  static dfs<T>(
      {required TreeNode<T> node,
      required void Function(TreeNode<T> node) performAction}) {
    performAction(node);
    for (TreeNode<T> node in node.children) {
      dfs(
          node: node,
          performAction: performAction); // Recursive call for each child
    }
  }
}
