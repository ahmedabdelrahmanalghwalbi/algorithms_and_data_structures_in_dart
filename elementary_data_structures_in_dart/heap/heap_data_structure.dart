enum Priority { max, min }

class Heap<E extends Comparable<dynamic>> {
  Heap({List<E>? elements, this.priority = Priority.max}) {
    this.elements = (elements == null) ? [] : elements;
  }
  late final List<E> elements;
  final Priority priority;
  bool get isEmpty => elements.isEmpty;
  int get size => elements.length;
  E? get peek => (isEmpty) ? null : elements.first;
  int leftChildIndex(int parentIndex) {
    return 2 * parentIndex + 1;
  }

  @override
  String toString() => elements.toString();

  int rightChildIndex(int parentIndex) {
    return 2 * parentIndex + 2;
  }

  int parentIndex(int childIndex) {
    return (childIndex - 1) ~/ 2;
  }

  bool _firstHasHigherPriority(E valueA, E valueB) {
    if (priority == Priority.max) {
      return valueA.compareTo(valueB) > 0;
    }
    return valueA.compareTo(valueB) < 0;
  }

  int higherPriority(int indexA, int indexB) {
    if (indexA >= elements.length) return indexB;
    final valueA = elements[indexA];
    final valueB = elements[indexB];
    final isFirst = _firstHasHigherPriority(valueA, valueB);
    return (isFirst) ? indexA : indexB;
  }

  void swapValues(int indexA, int indexB) {
    final temp = elements[indexA];
    elements[indexA] = elements[indexB];
    elements[indexB] = temp;
  }

  void insert(E value) {
    elements.add(value);

    _siftUp(elements.length - 1);
  }

  void _siftUp(int index) {
    var child = index;
    var parent = parentIndex(child);

    while (child > 0 && child == higherPriority(child, parent)) {
      swapValues(child, parent);
      child = parent;
      parent = parentIndex(child);
    }
  }

  void siftDown(int index) {
    var parent = index;
    while (true) {
      final left = leftChildIndex(parent);
      final right = rightChildIndex(parent);

      var chosen = higherPriority(left, parent);

      chosen = higherPriority(right, chosen);

      if (chosen == parent) return;

      swapValues(parent, chosen);
      parent = chosen;
    }
  }

  E? remove() {
    if (isEmpty) return null;
    swapValues(0, elements.length - 1);
    final value = elements.removeLast();
    siftDown(0);
    return value;
  }

  E? removeAt(int index) {
    final lastIndex = elements.length - 1;
    if (index < 0 || index > lastIndex) {
      return null;
    }
    if (index == lastIndex) {
      return elements.removeLast();
    }
    swapValues(index, lastIndex);
    final value = elements.removeLast();
    siftDown(index);
    _siftUp(index);
    return value;
  }

  int indexOf(E value, {int index = 0}) {
    if (index >= elements.length) {
      return -1;
    }
    if (_firstHasHigherPriority(value, elements[index])) {
      return -1;
    }
    if (value == elements[index]) {
      return index;
    }
    final left = indexOf(value, index: leftChildIndex(index));
    if (left != -1) return left;
    return indexOf(value, index: rightChildIndex(index));
  }
}
