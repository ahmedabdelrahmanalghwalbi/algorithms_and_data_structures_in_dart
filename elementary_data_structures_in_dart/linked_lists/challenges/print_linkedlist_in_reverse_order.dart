import '../linked_list_data_structure.dart';
import '../node.dart';

void main() {
  LinkedList<int> linkedList = LinkedList();
  linkedList.push = 3;
  linkedList.push = 2;
  linkedList.push = 1;
  //Print in Reverse
  print("linked list Original Order");
  print(linkedList.toString());
  print("linked list Reverse Order");
  printLinkedListInReverseOrder(node: linkedList.head);
}

void printLinkedListInReverseOrder({required Node? node}) {
  if (node == null) return;
  printLinkedListInReverseOrder(node: node.next);
  print(node.value.toString() + '\n');
}
