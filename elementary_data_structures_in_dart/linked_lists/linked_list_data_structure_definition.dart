/*

1- A linked list is a collection of values arranged in a linear, unidirectional sequence. It
   has several theoretical advantages over contiguous storage options such as the Dart List:
    • Constant time insertion and removal from the front of the list.
    • Reliable performance characteristics.
  
2- A linked list is a chain of nodes:-   12 --> 1 --> 3 --> ...

3- Nodes have two responsibilities:
    1. Hold a value.
    2. Hold a reference to the next node. A null reference indicates the end of the list.

4- Performance :-
  push -> O(1).
  append -> O(1).
  insertAfter :-
    1- nodeAt -> O(i) -> where i is the givin index.
    2- insertAfterNode -> O(1)
  pop -> O(1)
  removeLast -> O(n)
  removeAfter :-
    1- nodeAt -> O(i) -> where i is the givin index.
    2- removeAfterNode -> O(1)
  


*/ 