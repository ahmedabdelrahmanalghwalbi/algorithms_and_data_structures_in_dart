import '../heap/heap_data_structure.dart';
import '../queue/queue_implementations/queue_using_list.dart';

class PriorityQueue<E extends Comparable<dynamic>>
    implements QueueListBasedImplementation<E> {
  PriorityQueue({
    List<E>? elements,
    Priority priority = Priority.max,
  }) {
    _heap = Heap<E>(elements: elements, priority: priority);
  }
  late Heap<E> _heap;
  @override
  bool get isEmpty => _heap.isEmpty;
  @override
  E? get peek => _heap.peek;

  @override
  bool enqueue(E element) {
    _heap.insert(element);
    return true;
  }

  @override
  E? dequeue() => _heap.remove();
}
