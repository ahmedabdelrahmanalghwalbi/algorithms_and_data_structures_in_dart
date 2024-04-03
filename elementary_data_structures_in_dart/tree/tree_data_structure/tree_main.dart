import 'traversal_algorithms.dart';
import 'tree.dart';

void main() {
  //first building normal tree
  final TreeNode<String> root = TreeNode<String>(value: 'beverages');
  final TreeNode<String> hot = TreeNode<String>(value: 'hot');
  final TreeNode<String> cold = TreeNode<String>(value: 'cold');
  final TreeNode<String> tea = TreeNode<String>(value: 'tea');
  final TreeNode<String> coffee = TreeNode<String>(value: 'coffee');
  final TreeNode<String> chocolate = TreeNode<String>(value: 'cocoa');
  final TreeNode<String> blackTea = TreeNode<String>(value: 'black');
  final TreeNode<String> greenTea = TreeNode<String>(value: 'green');
  final TreeNode<String> chaiTea = TreeNode<String>(value: 'chai');
  final TreeNode<String> soda = TreeNode<String>(value: 'soda');
  final TreeNode<String> milk = TreeNode<String>(value: 'milk');
  final TreeNode<String> gingerAle = TreeNode<String>(value: 'ginger ale');
  final TreeNode<String> bitterLemon = TreeNode<String>(value: 'bitter lemon');

  root.add = hot;
  root.add = cold;
  hot.add = tea;
  hot.add = coffee;
  hot.add = chocolate;
  cold.add = soda;
  cold.add = milk;
  tea.add = blackTea;
  tea.add = greenTea;
  tea.add = chaiTea;
  soda.add = gingerAle;
  soda.add = bitterLemon;
  //then appling (DFS) algorithm (Traversal Algorithm)
  TraversalAlgorithms.dfs(
      node: root,
      performAction: (node) {
        print("this is current node value :- ${node.value}");
      });
}
