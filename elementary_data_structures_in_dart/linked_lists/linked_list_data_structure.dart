import 'node.dart';
/*
-A linked list has the concept of a head and tail, which refers to the first and last
nodes of the list respectively.
*/

class LinkedList<T> {
  Node<T>? head;
  Node<T>? tail;
  LinkedList({this.head, this.tail});
  bool get isEmpty => tail == null;
  @override
  String toString() {
    if (isEmpty) return "This Linked List is Empty";
    return head.toString();
  }

//push: Adds a value at the front of the list.
  void set push(T value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

//insertAfter: Adds a value after a particular node in the list.
// requires two steps:
//  1. Finding a particular node in the list.
  Node<T>? nodeAt(int index) {
    if (isEmpty) return null;
    // 1. You create a new reference to head and set up a counter to keep track of where you are in the list.
    Node<T>? currentNode = head;
    int currentNodeIndex = 0;
    //2. Using a while loop, you move the reference down the list until you’ve reached
    //the desired index. Empty lists or out-of-bounds indexes will result in a null return value.
    while (currentNodeIndex < index && currentNode != null) {
      currentNode = currentNode.next;
      currentNodeIndex += 1;
    }
    return currentNode;
  }

//  2. Inserting the new node after it.
  void insertNodeAfter(Node<T>? oldNodeThatCommingFromNodeAt, T value) {
    if (oldNodeThatCommingFromNodeAt == null) return;
    // 1-In the case where this method is called with the tail node, you’ll call the
    // functionally equivalent append method. This will take care of updating tail.
    if (oldNodeThatCommingFromNodeAt == tail) {
      append = value;
      return;
    }
    //Otherwise, you simply link up the new node with the rest of the list and return the new node.
    oldNodeThatCommingFromNodeAt.next =
        Node(value: value, next: oldNodeThatCommingFromNodeAt.next);
    return;
  }

//append: Adds a value at the end of the list.
  void set append(T value) {
    if (isEmpty) {
      head = tail = Node<T>(value: value); //similar as push()
      return;
    }
    if (tail != null) {
      tail?.next = Node(value: value);
      tail = tail?.next;
      return;
    }
  }

// pop: Removes the value at the front of the list.
  void pop() {
    if (isEmpty) return null;
    head = head?.next;
    if (isEmpty) tail = null;
    return;
  }

// removeLast: Removes the value at the end of the list.
  void removeLast() {
    if (isEmpty) return;
    // 1. If the list only consists of one node, removeLast is functionally equivalent to
    // pop. Since pop will handle updating the head and tail references, you’ll just
    // delegate this work. pop will also handle the case of an empty list.
    if (head?.next == null) return pop();
    // 2.You start at the beginning and keep searching the nodes until current.next is
    // tail. This signifies that current is the node right before tail.
    Node<T>? currentNode = head;
    while (currentNode?.next != tail) {
      currentNode = currentNode?.next;
    }
    //3. You collect the return value from the tail and after that rewire the node before the tail to be the new tail.
    currentNode?.next = null;
    tail = currentNode;
    return;
  }

  // removeAfter: Removes the value after a particular node in the list.
  void removeAfter(Node<T>? nodeThatIWillRemoveAfterIt) {
    if (nodeThatIWillRemoveAfterIt == null) return null;
    if (nodeThatIWillRemoveAfterIt.next == tail) {
      tail = nodeThatIWillRemoveAfterIt;
    }
    nodeThatIWillRemoveAfterIt.next = nodeThatIWillRemoveAfterIt.next?.next;
  }
}
