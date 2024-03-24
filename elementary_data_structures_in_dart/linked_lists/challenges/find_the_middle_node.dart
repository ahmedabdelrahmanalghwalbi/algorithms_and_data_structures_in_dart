import '../linked_list_data_structure.dart';
import '../node.dart';

/*
- solution is to have two references traverse down the nodes of the list, where one
  is twice as fast as the other. Once the faster reference reaches the end, the slower
  reference will be in the middle.
*/

void main() {
  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.push = 4;
  linkedList.push = 3;
  linkedList.push = 2;
  linkedList.push = 1;
  //Find the middle Node in the Linked List.
  print("Linked List :- ${linkedList.toString()}");
  print(
      "The Middle Node of this Linked List :- ${getMiddleNodeInLinkedList(linkedList: linkedList)?.value.toString()}");
}

Node<T>? getMiddleNodeInLinkedList<T>({required LinkedList<T> linkedList}) {
  if (linkedList.isEmpty) return null;
  Node<T>? slowNode = linkedList.head;
  Node<T>? fastNode = linkedList.head;

  while (fastNode?.next != null) {
    fastNode = fastNode?.next?.next;
    slowNode = slowNode?.next;
  }
  return slowNode;
}
