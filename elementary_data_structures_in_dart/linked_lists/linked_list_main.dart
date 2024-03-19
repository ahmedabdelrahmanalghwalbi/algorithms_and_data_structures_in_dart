import 'linked_list_data_structure.dart';
import 'node.dart';

void main() {
  // Creating a Linked List by Hand (using nodes only)
  print("Creating a Linked List by Hand (using nodes only)");
  final Node<int> node1 = Node(value: 1);
  final Node<int> node2 = Node(value: 2);
  final Node<int> node3 = Node(value: 3);
  node1.next = node2;
  node2.next = node3;
  print(node1); //expected :- 1 -> 2 -> 3
  //Pushing to the Front of a List
  print("Pushing to the Front of a List");
  LinkedList<int> linkedList = LinkedList();
  linkedList.push = 3;
  linkedList.push = 2;
  linkedList.push = 1;
  print(linkedList); //expected :- 1 -> 2 -> 3
  //Appending to the End of a List
  print("Appending to the End of a List");
  linkedList.append = 5;
  print(linkedList); //expected :- 1 -> 2 -> 3 -> 5
  //Inserting in Middle of a List
  print("Inserting in Middle of a List");
  Node<int>? oldNodeThatCommingFromNodeAt = linkedList.nodeAt(2);
  linkedList.insertNodeAfter(oldNodeThatCommingFromNodeAt, 4);
  print(linkedList); ////expected :- 1 -> 2 -> 3 -> 4 -> 5
  //Popping From the Front of a List
  print("Popping From the Front of a List");
  linkedList.pop();
  print(linkedList); //expected :- 2 -> 3 -> 4 -> 5
  //Removing From the End of a List
  print("Removing From the End of a List");
  linkedList.removeLast();
  print(linkedList); //expected :- 2 -> 3 -> 4
  //Removing a Value From the Middle of a List
  print("Removing a Value From the Middle of a List");
  Node<int>? nodeThatIWillRemoveAfterIt = linkedList.nodeAt(1);
  linkedList.removeAfter(nodeThatIWillRemoveAfterIt);
  print(linkedList); //expected :- 2 -> 3
  //Looping Through a Linked List
  print("Looping Through a List");
  final LinkedList<int> list = LinkedList<int>();
  list.push = 3;
  list.push = 2;
  list.push = 1;
  for (final element in list) {
    print(element); //expected 1 2 3
  }
}
