/*
- To reverse a linked list, you must visit each node and update the next reference to
  point in the other direction.
*/

import '../linked_list_data_structure.dart';
import '../node.dart';

void main() {
  print("First Reverse LinkedList Way (Easy Way)");
  LinkedList<int> linkedList = LinkedList<int>();
  linkedList.push = 4;
  linkedList.push = 3;
  linkedList.push = 2;
  linkedList.push = 1;
  print("Linked List in the Original Order :-");
  print(linkedList.toString());
  print("Linked List in the Reverse Order :-");
  linkedList.reverse1();
  print(linkedList.toString());
  //////////////////////////////////////////////////////////////////////////////////
  print(
      "Second Reverse LinkedList Way (More Optimal way with less using of resources)");
  LinkedList<int> linkedList2 = LinkedList<int>();
  linkedList2.push = 4;
  linkedList2.push = 3;
  linkedList2.push = 2;
  linkedList2.push = 1;
  print("Linked List in the Original Order :-");
  print(linkedList2.toString());
  print("Linked List in the Reverse Order :-");
  linkedList2.reverse2();
  print(linkedList2.toString());
}

//First Solution (Easy Way) - Time Complexity :- O(n)
//trivially reverse a list by using the push method along with a new temporary list
extension ReverseLinkedList1<T> on LinkedList<T> {
  void reverse1() {
    LinkedList<T> tempLinkedList = LinkedList<T>();
    for (T value in this) {
      // here the iterating on the linked list iterating on the values (not) nodes.
      tempLinkedList.push = value;
    }
    this.head =
        tempLinkedList.head; //point the head of the list to the reversed nodes.
  }
}

/*
  Although O(n) is the optimal time complexity for reversing a list, there’s a
  significant resource cost in the previous solution. As it is now, reverse will have to
  allocate new nodes for each push method on the temporary list. You can avoid using
  the temporary list entirely and reverse the list by manipulating the next pointers of
  each node. The code ends up being more complicated, but you reap considerable
  benefits in terms of performance.
*/

//Second Solution (Better Solution) - Time Complexity :- O(n) but with less using of resources
extension ReverseLinkedList2<T> on LinkedList<T> {
  void reverse2() {
    this.tail = this.head;
    Node<T>? previous = head;
    Node<T>? current = head?.next;
    previous?.next = null;
    while (current != null) {
      final next = current.next;
      current.next = previous;
      previous = current;
      current = next;
    }
    this.head = previous;
  }
}
