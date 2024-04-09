import '../queue/queue_implementations/queue_using_list.dart';
import 'tree.dart';

abstract class TraversalAlgorithms {
  //depth first search (Traversal algorithms)
  static void dfs<T>(
      {required TreeNode<T> node,
      required void Function(TreeNode<T> node) performAction}) {
    performAction(node);
    for (TreeNode<T> node in node.children) {
      dfs(
          node: node,
          performAction: performAction); // Recursive call for each child
    }
  }

  //level order (Traversal Algorithm)
  static void levelOrderTraversal<T>(
      {required TreeNode<T> node,
      required void Function(TreeNode<T> node) performAction}) {
    final queue = QueueListBasedImplementation<TreeNode<T>>();
    performAction(node);
    node.children.forEach(queue.enqueue);
    var currentNode = queue.dequeue();
    while (currentNode != null) {
      performAction(currentNode);
      currentNode.children.forEach(queue.enqueue);
      currentNode = queue.dequeue();
    }
  }
}
