import 'queue_data_structure_interface.dart';

class QueueListBasedImplementation<T> implements QueueInterface<T> {
  final List<T> _list = <T>[];

  // average case :- O(n)
  // worest case :- o(n)
  @override
  T? dequeue() {
    // remove the element in index [0] becouse it is the first element entered to the queue
    return isEmpty ? null : _list.removeAt(0);
  }

  // average case :- O(1)
  // worest case :- o(n)
  @override
  bool enqueue(T element) {
    _list.add(element);
    return true;
  }

  // O(1)
  @override
  bool get isEmpty => _list.isEmpty;

  // O(1)
  @override
  T? get peek => isEmpty ? null : _list.first;

  @override
  String toString() => _list.toString();
}
