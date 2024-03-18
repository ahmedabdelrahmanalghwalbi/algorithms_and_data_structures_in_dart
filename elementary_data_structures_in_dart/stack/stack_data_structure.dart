class Stack<T> {
  final List<T> _memory;
  Stack() : _memory = [];

  //creating Stack from Iterable
  Stack.of(Iterable<T> elements) : _memory = List.of(elements);

  //push to Stack
  void set push(T value) => _memory.add(value);
  //pop from Stack
  T get pop => _memory.removeLast();
  //get the last-in value
  T get peek => _memory.last;
  //get if Stack is Emply
  bool get isStackEmply => _memory.isEmpty;
  //get if Stack is NotEmpty
  bool get isStackNotEmpty => _memory.isNotEmpty;

  @override
  String toString() {
    return "This is Your Stack ==> ${_memory.reversed.join(' -> ')}";
  }
}
