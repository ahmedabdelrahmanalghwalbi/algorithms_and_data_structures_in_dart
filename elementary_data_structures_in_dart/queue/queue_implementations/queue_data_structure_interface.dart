abstract class QueueInterface<T> {
  //enqueue: Insert an element at the back of the queue. Return true if the operation was successful.
  bool enqueue(T element);
  //dequeue: Remove the element at the front of the queue and return it.
  T? dequeue();
  //isEmpty: Check if the queue is empty.
  bool get isEmpty;
  // Return the element at the front of the queue without removing it.
  T? get peek;
}
