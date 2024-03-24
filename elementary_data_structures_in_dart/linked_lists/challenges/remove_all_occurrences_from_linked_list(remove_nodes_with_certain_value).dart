import '../linked_list_data_structure.dart';

void main() {
  var list = LinkedList<int>();
  list.push = 3;
  list.push = 2;
  list.push = 2;
  list.push = 1;
  list.push = 1;
  list.removeAllNodesThatMatchesCertainValue(
      2); //here i will pass value of the nodes that i want to delete from the linked list
  print(list);
}

extension RemoveAllOccurence<T> on LinkedList<T> {
  void removeAllNodesThatMatchesCertainValue(T value) {
    // if head value is equal to the value that i wanna to delete , then i will unlink head and make the new head is the old head's next.
    while (head != null && head!.value == value) {
      head = head!.next;
    }
    var previous = head;
    var current = head?.next;
    while (current != null) {
      if (current.value == value) {
        previous?.next = current.next;
        current = previous?.next;
        continue;
      }
      previous = current;
      current = current.next;
    }
    tail = previous;
  }
}
