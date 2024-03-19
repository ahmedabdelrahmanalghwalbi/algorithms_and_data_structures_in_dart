class Node<T> {
  T value;
  Node<T>? next;
  Node({this.next, required this.value});
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}'; //recursive
  }
}
